/*
*	Copyright (C) 2010 Thorsten Liebig (Thorsten.Liebig@gmx.de)
*
*	This program is free software: you can redistribute it and/or modify
*	it under the terms of the GNU General Public License as published by
*	the Free Software Foundation, either version 3 of the License, or
*	(at your option) any later version.
*
*	This program is distributed in the hope that it will be useful,
*	but WITHOUT ANY WARRANTY; without even the implied warranty of
*	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*	GNU General Public License for more details.
*
*	You should have received a copy of the GNU General Public License
*	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef ENGINE_EXTENSION_H
#define ENGINE_EXTENSION_H

class Operator_Extension;
class Engine;

//! Abstract base-class for all engine extensions
class Engine_Extension
{
public:
	//! This methode will be called __before__ the main engine does the usual voltage updates. This methode may __not__ change the engine voltages!!!
	virtual void DoPreVoltageUpdates() {}
	//! This methode will be called __after__ the main engine does the usual voltage updates. This methode may __not__ change the engine voltages!!!
	virtual void DoPostVoltageUpdates() {}
	//! This methode will be called __after__ all updates to the voltages and extensions and may add/set its results to the engine voltages, but may __not__ rely on the current value of the engine voltages!!!
	virtual void Apply2Voltages() {}

	//! This methode will be called __before__ the main engine does the usual current updates. This methode may __not__ change the engine current!!!
	virtual void DoPreCurrentUpdates() {}
	//! This methode will be called __after__ the main engine does the usual current updates. This methode may __not__ change the engine current!!!
	virtual void DoPostCurrentUpdates() {}
	//! This methode will be called __after__ all updates to the current and extensions and may add/set its results to the engine current, but may __not__ rely on the current value of the engine current!!!
	virtual void Apply2Current() {}

	//! Set the Engine to this extention. This will usually done automatically by Engine::AddExtension
	virtual void SetEngine(Engine* eng) {m_Eng=eng;}
protected:
	Engine_Extension(Operator_Extension* op_ext);

	Operator_Extension* m_Op_ext;
	Engine* m_Eng;
};

#endif // ENGINE_EXTENSION_H

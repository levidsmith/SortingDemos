//2021 Levi D. Smith
using System;
using System.Collections;
using System.Collections.Generic;

public class Weapon : IComparable<Weapon> {
    public string strName;
    public int iCost;
    public int iAttack;

    public Weapon(string in_strName, int in_iCost, int in_iAttack) {
        strName = in_strName;
        iCost = in_iCost;
        iAttack = in_iAttack;
    }

    override public string ToString() {
        return string.Format("Weapon: {0} Cost: {1} Attack {2}", strName, iCost, iAttack);
    }

    public int CompareTo(Weapon weapon) {
        int iReturn = 0;
        int iType = 2;

        switch (iType) {
            case 0:
                //Compare by cost
                if (iCost > weapon.iCost) {
                    iReturn = 1;
                } else if (iCost < weapon.iCost) {
                    iReturn = -1;
                }
                break;
            case 1:
                //Compare by name (C# Compare handles case conversion)
                iReturn = string.Compare(strName, weapon.strName);
                break;
            case 2:
                //Compare by attack
                if (iAttack > weapon.iAttack) {
                    iReturn = 1;
                } else if (iAttack < weapon.iAttack) {
                    iReturn = -1;
                }
                break;
        }
        return iReturn;
    }

}
//2021 Levi D. Smith
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Parser : MonoBehaviour {
    public TextAsset textWeapons;

    void Start() {
        
    }

    void Update() {
        
    }

    public List<Weapon> parseWeapons() {
        string strContents = textWeapons.text;
        List<Weapon> listWeapons = new List<Weapon>();

        foreach (string strLine in strContents.Split('\n')) {

            string[] strTokens = strLine.Split(',');
            if (strTokens.Length >= 3) {
                Weapon weapon = new Weapon(strTokens[0], int.Parse(strTokens[2]), int.Parse(strTokens[1]));
                listWeapons.Add(weapon);
                
            }
        }

        return listWeapons;

    }
}
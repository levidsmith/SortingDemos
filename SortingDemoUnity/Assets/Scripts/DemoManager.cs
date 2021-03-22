//2021 Levi D. Smith
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DemoManager : MonoBehaviour {

    public Parser parser;
    public Text[] textOutputColumns;
    List<Weapon> listWeapons;

    void Start() {

              //  displaySortedInts();

             //   displaySortedStrings();

        listWeapons = parser.parseWeapons();
        listWeapons.Sort();
        displayWeapons();


    }

    void Update() {
        
    }

    private void displayWeapons() {

        textOutputColumns[0].text = "Name\n";
        textOutputColumns[1].text = "Cost\n";
        textOutputColumns[2].text = "Attack\n";

        foreach (Weapon weapon in listWeapons) {
            Debug.Log(weapon.ToString());
            textOutputColumns[0].text += weapon.strName + "\n";
            textOutputColumns[1].text += weapon.iCost + "\n";
            textOutputColumns[2].text += weapon.iAttack + "\n";
        }

    }

    private void displaySortedInts() {
        int[] iArray = { 75, 59, 11, 35, 3, 10, 2021 };

        textOutputColumns[0].text = "";
        textOutputColumns[1].text = "";
        textOutputColumns[2].text = "";
        foreach (int iValue in iArray) {
            textOutputColumns[0].text += string.Format("{0}\n", iValue);
        }

        Array.Sort(iArray);

        foreach (int iValue in iArray) {
            textOutputColumns[1].text += string.Format("{0}\n", iValue);
        }

    }

    private void displaySortedStrings() {
        string[] strArray = { "Orange", "Banana", "grapes", 
            "WATERMELON", "LEMON", "apple"};

        textOutputColumns[0].text = "";
        textOutputColumns[1].text = "";
        textOutputColumns[2].text = "";
        foreach (string strValue in strArray) {
            textOutputColumns[0].text += strValue + "\n";
        }

        Array.Sort(strArray);

        foreach (string strValue in strArray) {
            textOutputColumns[1].text += strValue + "\n";
        }

    }

}
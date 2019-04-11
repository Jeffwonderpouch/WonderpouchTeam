using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sum : MonoBehaviour
{
    void Start()
    {
        var sum = Sum(1, 2);
        Debug.Log($"Sum => {sum}");

        sum = Sum(1, 2, sum);
        Debug.Log($"Sum => {sum}");

        sum = Sum(1, 2, 3, sum);
        Debug.Log($"Sum => {sum}");
    }

    private int Sum(int a, int b)
    {
        return a + b;
    }

    private int Sum(int a, int b, int c)
    {
        return a + b + c;
    }

    private int Sum(int a, int b, int c, int d)
    {
        return a + b + c + d;
    }
}

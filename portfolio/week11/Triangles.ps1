For ($I=1; $I -lt 101; $I++)
{
    For($J=1; $J -lt 101; $J++)
    {
        Write-Output "The area for a triangle with base : $I and height : $J is " ($I*$J/2)
    }
}
# Depth First Search (DFS)
$MAX_DEPTH = 10

function Group_DFS_Inner($groupName, $depth)
{
	$Searcher.filter="(name=" + $groupName + ")"
	$result = $Searcher.FindAll()

	foreach($groupMember in $result)
	{
		"$('    ' * $depth)$($groupMember.properties.name)"

		if ($groupMember.properties.member -AND $depth -lt $MAX_DEPTH)
		{
			foreach ($childMember in $groupMember.properties.member)
			{
				$childMemberName=($childMember.substring(3) -split ',')[0]
				Group_DFS_Inner $childMemberName ($depth + 1)
			}
		}
	}
}

function Group_DFS($objectName)
{
	Group_DFS_Inner $objectName 0
}

Group_DFS('Secret_Group')
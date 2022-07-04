@extends('layout.base')

@section('title')
    Home Page
@endsection

@section('content')
    <div class="page">
        <main class="page-main">
        <div class="manage-budget">
            <div class="table-budget">
            <table class="w-100">
                <tbody>
                    @foreach ($divisions as $division)
                        <!-- start division`-->
                            <tr>
                                <td class="division show">
                                <div class="company">
                                    <form>Division
                                    <input type="text" value="{{$division->name}}" readonly="">
                                    </form>
                                </div>
                                </td>
                                <td class="department admin">
                                <div class="company">
                                    <form>
                                    <p>{{$division->leaderEmployee->fullName}}</p><span>&nbsp; Division Lead</span>
                                    </form>
                                </div>
                                </td>

                                @foreach ($division->employees as $employee)
                                    <td class="department show ">
                                        <div class="company">
                                            <form>Division Employee
                                            <input type="text" value="{{$employee->fullName}}" readonly>
                                            </form>
                                        </div>
                                    </td>
                                @endforeach

                                @foreach ($division->departments as $department)
                                    <!-- start department-->
                                        <td class="department show">
                                            <div class="company">
                                                <form>Department
                                                <input type="text" value="{{$department->name}}" readonly>
                                                </form>
                                            </div>
                                        </td>
                                    <!-- end department-->
                                

                                    <!-- start teams-->
                                    <td class="teams show">
                                            <div class="department admin">
                                                <div class="company">
                                                <form>
                                                    <p>{{$department->leaderEmployee->fullName}}</p><span>&nbsp; Department Lead</span>
                                                </form>
                                                </div>
                                            </div>
                                            @foreach ($department->employees as $departmentEmployee)
                                                <div class="team show">
                                                    <div class="company">
                                                    <form>Department Employee
                                                        <input type="text" value="{{$departmentEmployee->fullName}}" readonly>
                                                    </form>
                                                    </div>
                                                </div>
                                            @endforeach

                                            @foreach ($department->teams as $team)
                                                <div class="team show">
                                                    <div class="company">
                                                    <form>Team
                                                        <input type="text" value="{{$team->name}}" readonly>
                                                    </form>
                                                    </div>
                                                </div>

                                                <div class="team">
                                                    <div class="company">
                                                    <form>
                                                        <p>{{$team->leaderEmployee->fullName}}</p><span>&nbsp; Team Lead</span>
                                                    </form>
                                                    </div>
                                                </div>
                                            
                                                @foreach ($team->employees as $teamEmployee)
                                                    <div class="team">
                                                        <div class="company">
                                                        <form>Team Employee
                                                            <input type="text" value="{{$teamEmployee->fullName}}" readonly>
                                                        </form>
                                                        </div>
                                                    </div>
                                                @endforeach
                           
                                            @endforeach
                                    </td>
                                    <!-- end teams-->
                                @endforeach
                            </tr>
                            <!-- end division-->
                    @endforeach
                </tbody>
            </table>
            </div>
        </div>
        </main>
    </div>
@endsection
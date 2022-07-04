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
                                    <p>{{$division->leaderEmployee->name}}</p><span>&nbsp; Division Lead</span>
                                    </form>
                                </div>
                                </td>

                                <td class="department show ">
                                <div class="company">
                                    <form>Division Employee
                                    <input type="text" value="Employee Four" readonly>
                                    </form>
                                </div>
                                </td>
                                <td class="department show">
                                <div class="company">
                                    <form>Division Employee
                                    <input type="text" value="Employee Seven" readonly>
                                    </form>
                                </div>
                                </td>
                                <!-- start department-->
                                <td class="department show">
                                <div class="company">
                                    <form>Department
                                    <input type="text" value="Zurich" readonly>
                                    </form>
                                </div>
                                </td>
                                <!-- end department-->

                                <!-- start teams-->
                                <td class="teams show">
                                <div class="department admin">
                                    <div class="company">
                                    <form>
                                        <p>Employee Five</p><span>&nbsp; Department Lead</span>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Department Employee
                                        <input type="text" value="Employee Six" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Department Employee
                                        <input type="text" value="Employee Nine" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Team
                                        <input type="text" value="Sales ZU" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>
                                        <p>Employee Ten</p><span>&nbsp; Team Lead</span>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee One" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee Twelve" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee Thirteen" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team show">
                                    <div class="company">
                                    <form>Team
                                        <input type="text" value="Marketing ZU" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team">
                                    <div class="company">
                                    <form>
                                        <p>Employee Two</p><span>&nbsp; Team Lead</span>
                                    </form>
                                    </div>
                                </div>
                                <div class="team">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee Three" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee Seven" readonly>
                                    </form>
                                    </div>
                                </div>
                                <div class="team">
                                    <div class="company">
                                    <form>Team Employee
                                        <input type="text" value="Employee Eight" readonly>
                                    </form>
                                    </div>
                                </div>
                                </td>
                                <!-- end teams-->
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
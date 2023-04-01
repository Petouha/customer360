<div
                    class="bg-gray-50 border border-gray-200 p-10 rounded max-w-lg mx-auto mt-24"
                >
                    <header class="text-center">
                        <h2 class="text-2xl font-bold uppercase mb-1">
                            Register
                        </h2>
                        <p class="mb-4">Create an account to post gigs</p>
                    </header>
<form action="/users" method="POST">
                    @csrf
                    <div class="mb-6">
                            <label for="firstName" class="inline-block text-lg mb-2">
                                firstName
                            </label>
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="firstName"
                            />
                            @error('firstName')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label for="lastName" class="inline-block text-lg mb-2">
                                lastName
                            </label>
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="lastName"
                            />
                            @error('lastName')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label for="email" class="inline-block text-lg mb-2"
                                >Email</label
                            >
                            <input
                                type="email"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="email"
                            />
                            <!-- Error Example -->
                            @error('email')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label for="registration" class="inline-block text-lg mb-2">
                                registration
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="registration"
                            />
                            @error('registration')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label for="groupId" class="inline-block text-lg mb-2">
                                groupId
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="groupId"
                            />
                            @error('groupId')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="mb-6">
                            <label for="managerId" class="inline-block text-lg mb-2">
                                managerId
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="managerId"
                            />
                            @error('managerId')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label
                                for="password"
                                class="inline-block text-lg mb-2"
                            >
                                Password
                            </label>
                            <input
                                type="password"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="password"
                            />
                            @error('password')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <label
                                for="password_confirmation"
                                class="inline-block text-lg mb-2"
                            >
                                Confirm Password
                            </label>
                            <input
                                type="password"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="password_confirmation"
                            />
                            @error('password_confirmation')
                                <span style="background-color: red;">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-6">
                            <button
                                type="submit"
                                class="bg-laravel text-white rounded py-2 px-4 hover:bg-black"
                            >
                                Sign Up
                            </button>
                        </div>
                        <div class="mt-8">
                            <p>
                                Already have an account?
                                <a href="login" class="text-laravel"
                                    >Login</a
                                >
                            </p>
                        </div>
</form>
                </div>

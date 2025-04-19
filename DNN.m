function [ B_, STT_, SP_ ] = DNN( N_, Q_, B_, STT_, SP_ )

        INF = 10; SUP = 10; C = zeros(1,INF+SUP+N_);

        C(1,INF+1:1:SUP-1) = B_;
        
        for jbx = STT_(49):1:N_-50

            [ B_, SP_ ] = bitCoffee( jbx, B_, SP_ );

            if( sum(B_) == Q_ )
            
                return
            end

            for jbw = STT_(48):1:N_-49

                [ B_, SP_ ] = bitCoffee( jbw, B_, SP_ );

                if( sum(B_) == Q_ )
                
                    return
                end

                for jbv = STT_(47):1:N_-48

                    [ B_, SP_ ] = bitCoffee( jbv, B_, SP_ );

                    if( sum(B_) == Q_ )
                    
                        return
                    end

                    for jbu = STT_(46):1:N_-47

                        [ B_, SP_ ] = bitCoffee( jbu, B_, SP_ );

                        if( sum(B_) == Q_ )
                        
                            return
                        end

                        for jbt = STT_(45):1:N_-46

                            [ B_, SP_ ] = bitCoffee( jbt, B_, SP_ );

                            if( sum(B_) == Q_ )
                            
                                return
                            end

                            for jbs = STT_(44):1:N_-45

                                [ B_, SP_ ] = bitCoffee( jbs, B_, SP_ );

                                if( sum(B_) == Q_ )
                                
                                    return
                                end

                                for jbr = STT_(43):1:N_-44

                                    [ B_, SP_ ] = bitCoffee( jbr, B_, SP_ );

                                    if( sum(B_) == Q_ )
                                    
                                        return
                                    end

                                    for jbq = STT_(42):1:N_-43

                                        [ B_, SP_ ] = bitCoffee( jbq, B_, SP_ );

                                        if( sum(B_) == Q_ )
                                        
                                            return
                                        end

                                        for jbp = STT_(41):1:N_-42

                                            [ B_, SP_ ] = bitCoffee( jbp, B_, SP_ );

                                            if( sum(B_) == Q_ )
                                            
                                                return
                                            end

                                            for jbo = STT_(40):1:N_-41

                                                [ B_, SP_ ] = bitCoffee( jbo, B_, SP_ );

                                                if( sum(B_) == Q_ )
                                                
                                                    return
                                                end

                                                for jbn = STT_(39):1:N_-40

                                                    [ B_, SP_ ] = bitCoffee( jbn, B_, SP_ );

                                                    if( sum(B_) == Q_ )
                                                    
                                                        return
                                                    end

                                                    for jbm = STT_(38):1:N_-39

                                                        [ B_, SP_ ] = bitCoffee( jbm, B_, SP_ );

                                                        if( sum(B_) == Q_ )
                                                        
                                                            return
                                                        end

                                                        for jbl = STT_(37):1:N_-38

                                                            [ B_, SP_ ] = bitCoffee( jbl, B_, SP_ );

                                                            if( sum(B_) == Q_ )
                                                            
                                                                return
                                                            end

                                                            for jbk = STT_(36):1:N_-37

                                                                [ B_, SP_ ] = bitCoffee( jbk, B_, SP_ );

                                                                if( sum(B_) == Q_ )
                                                                
                                                                    return
                                                                end

                                                                for jbj = STT_(35):1:N_-36

                                                                    [ B_, SP_ ] = bitCoffee( jbj, B_, SP_ );

                                                                    if( sum(B_) == Q_ )
                                                                    
                                                                        return
                                                                    end

                                                                    for jbi = STT_(34):1:N_-35

                                                                        [ B_, SP_ ] = bitCoffee( jbi, B_, SP_ );

                                                                        if( sum(B_) == Q_ )
                                                                        
                                                                            return
                                                                        end

                                                                        for jbh = STT_(33):1:N_-34
                                                                            
                                                                            [ B_, SP_ ] = bitCoffee( jbh, B_, SP_ );

                                                                            if( sum(B_) == Q_ )
                                                                            
                                                                                return
                                                                            end                                                                                

                                                                            for jbg = STT_(32):1:N_-33

                                                                                [ B_, SP_ ] = bitCoffee( jbg, B_, SP_ );

                                                                                if( sum(B_) == Q_ )
                                                                                
                                                                                    return
                                                                                end

                                                                                for jbf = STT_(31):1:N_-32

                                                                                    [ B_, SP_ ] = bitCoffee( jbf, B_, SP_ );

                                                                                    if( sum(B_) == Q_ )
                                                                                    
                                                                                        return
                                                                                    end

                                                                                    for jbe = STT_(30):1:N_-31

                                                                                        [ B_, SP_ ] = bitCoffee( jbe, B_, SP_ );

                                                                                        if( sum(B_) == Q_ )
                                                                                        
                                                                                            return
                                                                                        end

                                                                                        for jbd = STT_(29):1:N_-30

                                                                                            [ B_, SP_ ] = bitCoffee( jbd, B_, SP_ );

                                                                                            if( sum(B_) == Q_ )
                                                                                            
                                                                                                return
                                                                                            end

                                                                                            for jbc = STT_(28):1:N_-29

                                                                                                [ B_, SP_ ] = bitCoffee( jbc, B_, SP_ );

                                                                                                if( sum(B_) == Q_ )
                                                                                                
                                                                                                    return
                                                                                                end

                                                                                                for jbb = STT_(27):1:N_-28
                                                                                                    
                                                                                                    [ B_, SP_ ] = bitCoffee( jbb, B_, SP_ );

                                                                                                    if( sum(B_) == Q_ )
                                                                                                    
                                                                                                        return
                                                                                                    end

                                                                                                    for jba = STT_(26):1:N_-27
                                                                                                        
                                                                                                        [ B_, SP_ ] = bitCoffee( jba, B_, SP_ );

                                                                                                        if( sum(B_) == Q_ )
                                                                                                        
                                                                                                            return
                                                                                                        end

                                                                                                        for jaz = STT_(25):1:N_-26

                                                                                                            [ B_, SP_ ] = bitCoffee( jaz, B_, SP_ );

                                                                                                            if( sum(B_) == Q_ )
                                                                                                            
                                                                                                                return
                                                                                                            end

                                                                                                            for jay = STT_(24):1:N_-25

                                                                                                                [ B_, SP_ ] = bitCoffee( jay, B_, SP_ );

                                                                                                                if( sum(B_) == Q_ )
                                                                                                                
                                                                                                                    return
                                                                                                                end

                                                                                                                for jax = STT_(23):1:N_-24

                                                                                                                    [ B_, SP_ ] = bitCoffee( jax, B_, SP_ );

                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                    
                                                                                                                        return
                                                                                                                    end

                                                                                                                    for jaw = STT_(22):1:N_-23

                                                                                                                        [ B_, SP_ ] = bitCoffee( jaw, B_, SP_ );

                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                        
                                                                                                                            return
                                                                                                                        end

                                                                                                                        for jav = STT_(21):1:N_-22

                                                                                                                            [ B_, SP_ ] = bitCoffee( jav, B_, SP_ );

                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                            
                                                                                                                                return
                                                                                                                            end


                                                                                                                            for jau = STT_(20):1:N_-21

                                                                                                                                [ B_, SP_ ] = bitCoffee( jau, B_, SP_ );

                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                
                                                                                                                                    return
                                                                                                                                end

                                                                                                                                for jat = STT_(19):1:N_-20

                                                                                                                                    [ B_, SP_ ] = bitCoffee( jat, B_, SP_ );

                                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                                    
                                                                                                                                        return
                                                                                                                                    end

                                                                                                                                    for jas = STT_(18):1:N_-19

                                                                                                                                        [ B_, SP_ ] = bitCoffee( jas, B_, SP_ );

                                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                                        
                                                                                                                                            return
                                                                                                                                        end

                                                                                                                                        for jar = STT_(17):1:N_-18

                                                                                                                                            [ B_, SP_ ] = bitCoffee( jar, B_, SP_ );

                                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                                            
                                                                                                                                                return
                                                                                                                                            end

                                                                                                                                            for jaq = STT_(16):1:N_-17

                                                                                                                                                [ B_, SP_ ] = bitCoffee( jaq, B_, SP_ );

                                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                                
                                                                                                                                                    return
                                                                                                                                                end

                                                                                                                                                for jap = STT_(15):1:N_-16

                                                                                                                                                    [ B_, SP_ ] = bitCoffee( jap, B_, SP_ );

                                                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                                                    
                                                                                                                                                        return
                                                                                                                                                    end

                                                                                                                                                    for jao = STT_(14):1:N_-15

                                                                                                                                                        [ B_, SP_ ] = bitCoffee( jao, B_, SP_ );

                                                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                                                        
                                                                                                                                                            return
                                                                                                                                                        end

                                                                                                                                                        for jan = STT_(14):1:N_-14

                                                                                                                                                            [ B_, SP_ ] = bitCoffee( jan, B_, SP_ );

                                                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                                                            
                                                                                                                                                                return
                                                                                                                                                            end

                                                                                                                                                            for jam = STT_(13):1:N_-13

                                                                                                                                                                [ B_, SP_ ] = bitCoffee( jam, B_, SP_ );

                                                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                                                
                                                                                                                                                                    return
                                                                                                                                                                end

                                                                                                                                                                for jal = STT_(12):1:N_-12

                                                                                                                                                                    [ B_, SP_ ] = bitCoffee( jal, B_, SP_ );

                                                                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                                                                    
                                                                                                                                                                        return
                                                                                                                                                                    end

                                                                                                                                                                    for jak = STT_(11):1:N_-11

                                                                                                                                                                        [ B_, SP_ ] = bitCoffee( jak, B_, SP_ );

                                                                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                                                                        
                                                                                                                                                                            return
                                                                                                                                                                        end

                                                                                                                                                                        for jaj = STT_(10):1:N_-10

                                                                                                                                                                            [ B_, SP_ ] = bitCoffee( jaj, B_, SP_ );

                                                                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                                                                            
                                                                                                                                                                                return
                                                                                                                                                                            end

                                                                                                                                                                            for jai = STT_(9):1:N_-9

                                                                                                                                                                                [ B_, SP_ ] = bitCoffee( jai, B_, SP_ );

                                                                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                                                                
                                                                                                                                                                                    return
                                                                                                                                                                                end

                                                                                                                                                                                for jah = STT_(8):1:N_-8

                                                                                                                                                                                    [ B_, SP_ ] = bitCoffee( jah, B_, SP_ );

                                                                                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                                                                                    
                                                                                                                                                                                        return
                                                                                                                                                                                    end
                                                                                                                                                                                    
                                                                                                                                                                                    for jag = STT_(7):1:N_-7

                                                                                                                                                                                        [ B_, SP_ ] = bitCoffee( jag, B_, SP_ );

                                                                                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                                                                                        
                                                                                                                                                                                            return
                                                                                                                                                                                        end

                                                                                                                                                                                        for jaf = STT_(6):1:N_-6

                                                                                                                                                                                            [ B_, SP_ ] = bitCoffee( jaf, B_, SP_ );

                                                                                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                                                                                            
                                                                                                                                                                                                return
                                                                                                                                                                                            end

                                                                                                                                                                                            for jae = STT_(5):1:N_-5

                                                                                                                                                                                                [ B_, SP_ ] = bitCoffee( jae, B_, SP_ );

                                                                                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                                                                                
                                                                                                                                                                                                    return
                                                                                                                                                                                                end

                                                                                                                                                                                                for jad = STT_(4):1:N_-4

                                                                                                                                                                                                    [ B_, SP_ ] = bitCoffee( jad, B_, SP_ );

                                                                                                                                                                                                    if( sum(B_) == Q_ )
                                                                                                                                                                                                    
                                                                                                                                                                                                        return
                                                                                                                                                                                                    end

                                                                                                                                                                                                    for jac = STT_(3):1:N_-3 

                                                                                                                                                                                                        [ B_, SP_ ] = bitCoffee( jac, B_, SP_ );

                                                                                                                                                                                                        if( sum(B_) == Q_ )
                                                                                                                                                                                                        
                                                                                                                                                                                                            return
                                                                                                                                                                                                        end

                                                                                                                                                                                                        for jab = STT_(2):1:N_-2

                                                                                                                                                                                                            [ B_, SP_ ] = bitCoffee( jab, B_, SP_ );

                                                                                                                                                                                                            if( sum(B_) == Q_ )
                                                                                                                                                                                                            
                                                                                                                                                                                                                return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            
                                                                                                                                                                                                            for jaa = STT_(1):1:N_-1
                                                                                                                                                                                                            
                                                                                                                                                                                                                [ B_, SP_ ] = bitCoffee( jaa, B_, SP_ );

                                                                                                                                                                                                                if( sum(B_) == Q_ )
                                                                                                                                                                                                                
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                            end
                                                                                                                                                                                                        end
                                                                                                                                                                                                    end
                                                                                                                                                                                                end
                                                                                                                                                                                            end
                                                                                                                                                                                        end
                                                                                                                                                                                    end
                                                                                                                                                                                end
                                                                                                                                                                            end
                                                                                                                                                                        end
                                                                                                                                                                    end
                                                                                                                                                                end
                                                                                                                                                            end
                                                                                                                                                        end
                                                                                                                                                    end
                                                                                                                                                end
                                                                                                                                            end
                                                                                                                                        end
                                                                                                                                    end
                                                                                                                                end
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end



end


    

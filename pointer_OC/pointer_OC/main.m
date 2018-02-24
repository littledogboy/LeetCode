//
//  main.m
//  pointer_OC
//
//  Created by 吴书敏 on 2018/2/21.
//  Copyright © 2018年 吴书敏. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int array[4] = {2, 4, 6, 8};
    printf("%d\n", *array);
    printf("%p\n", &array);
    
    for (int i = 0; i < 4; i++) {
        printf("%d\n", array[i]);
    }
   
    return 0;
}

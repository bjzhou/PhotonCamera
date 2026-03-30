.class final Liz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/viewpager2/widget/jY/lIiWb;->vFreyTBD:Ljava/lang/String;

    nop

    nop

    nop

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    const-class v3, Landroid/view/View;

    nop

    nop

    nop

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sput-object v0, Liz;->a:Ljava/lang/reflect/Method;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Landroid/widget/AdapterView;

    nop

    nop

    nop

    const-string v2, "setSelectedPositionInt"

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    sput-object v0, Liz;->b:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v0, Landroid/widget/AdapterView;

    nop

    nop

    nop

    const-string v2, "setNextSelectedPositionInt"

    nop

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    sput-object v0, Liz;->c:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sput-boolean v1, Liz;->d:Z

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.class public final Ldur;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ldur;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Ldur;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldur;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Ldur;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lqei;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lqei;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v0, p0, Ldur;->a:Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Ldur;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ldur;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget p0, p0, Ldur;->d:I

    nop

    nop

    invoke-static {v0, v1, v2, p0}, Ldut;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lqei;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1}, Lqei;-><init>(I[B)V

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ldur;->a()Lqei;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

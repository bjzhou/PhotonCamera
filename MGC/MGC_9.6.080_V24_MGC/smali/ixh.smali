.class public final Lixh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lixr;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lixh;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqxk;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Unable to create or provide "

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    :try_start_0
    iget-object v0, p1, Lqxk;->b:Ljava/lang/Object;

    nop

    iget-object p0, p0, Lixh;->a:Landroid/content/Context;

    nop

    nop

    iget-object v1, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Class;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    throw v0

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.class public final Ltzu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luac;


# instance fields
.field private final a:Lubk;

.field private final b:Luac;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const v1, 0x1e

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Luaa;->k:Ltzz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    sget-object v1, Ligt;->k:Ligt;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Ltzu;-><init>(Luac;Lubk;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    :goto_c
    rem-int v0, v0, v1

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

.method public constructor <init>(Luac;Lubk;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Ltzu;->b:Luac;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ltzu;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltzu;->b:Luac;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    check-cast p1, Ltzu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of p2, p1, Ltzu;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Luab;)Luab;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Luab;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltzu;->a:Lubk;

    nop

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

.method public final b(Luac;)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltzu;->b:Luac;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-ne p1, p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

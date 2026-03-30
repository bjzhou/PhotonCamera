.class public final Llws;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llws;->b:Ltxm;

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

    :goto_1
    iput-object p3, p0, Llws;->c:Ltxm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Llws;->a:Ltxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lmhz;

    nop

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

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x248

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

    :goto_5
    const/4 v0, 0x0

    nop

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final b()Lmhz;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lmhz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, p0}, Lmhz;-><init>(Ltxm;Ltxm;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llws;->c:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Llws;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

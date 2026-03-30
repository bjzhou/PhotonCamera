.class public final Lent;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/window/reflection/Consumer2;


# instance fields
.field final synthetic a:Leny;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Leob;

.field private final d:Landroidx/window/extensions/area/WindowAreaComponent;

.field private e:I


# direct methods
.method public static synthetic $r8$lambda$ejBVDgJJoSxAhsjcPWpzIdNJCB0(IILent;Leny;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p2}, Leob;->dk(Lenm;)V

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Leoh;->a()I

    move-result v0

    nop

    nop

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

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    :goto_8
    invoke-direct {p2, p1, p3, v0}, Lenm;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p0, p3, Leny;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p2, Lenm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    sget v0, Leoh;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object p1, p2, Lent;->d:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Leny;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-ne p0, p3, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    iget-object p0, p2, Lent;->c:Leob;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    const-string p2, "Invalid session state value received: "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p2, Lent;->c:Leob;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Landroidx/window/extensions/area/WindowAreaComponent;->getRearDisplayPresentation()Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    :goto_1d
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Leob;->dl()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Leny;Ljava/util/concurrent/Executor;Leob;Landroidx/window/extensions/area/WindowAreaComponent;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lent;->a:Leny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lent;->d:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lent;->c:Leob;

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

    :goto_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lent;->b:Ljava/util/concurrent/Executor;

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

    :goto_7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public accept(I)V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v6, Lmsa;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lent;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v5}, Lmsa;-><init>(IILent;Leny;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lent;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, p0

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lent;->a:Leny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget v2, p0, Lent;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lent;->accept(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.class public final Leny;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lens;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Landroidx/window/extensions/area/WindowAreaComponent;

.field public d:Lenp;

.field public e:Lenp;

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/HashMap;

.field private i:Landroidx/window/reflection/Consumer2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    sput-object v0, Leny;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const-class v1, Leny;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    sget v0, Luct;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ludp;->c()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Landroidx/window/extensions/area/WindowAreaComponent;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Leny;->d:Lenp;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/HashMap;

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

    :goto_5
    sget-object p1, Lenp;->a:Lenp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p1, p0, Leny;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Leny;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Leny;->e:Lenp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lujp;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

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

    :goto_1
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1, v2}, Legh;-><init>(Leny;Ltzy;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Legh;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0}, Lujl;-><init>(Lubo;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    new-instance p0, Lujl;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final b(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Leob;)V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Leny;->e:Lenp;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v8, Lenv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    move-object v1, v8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    move-object v5, p4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    move-object v4, p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v0, p2, v8, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p2, p3, p4}, Leny;->e(Landroid/app/Activity;Ljava/util/concurrent/Executor;Leob;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Lenp;->a:Lenp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_1f
    invoke-direct/range {v1 .. v7}, Lenv;-><init>(Leny;Landroid/app/Activity;Ljava/util/concurrent/Executor;Leob;Ltzy;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_24
    const/16 p1, 0xf

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p3}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    const-string v0, "WINDOW_AREA_REAR_DISPLAY"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_28
    new-instance p0, Lkd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, p4, p1, v0}, Lkd;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Leod;)V
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, v8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-static {p3}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v1 .. v7}, Lenv;-><init>(Leny;Landroid/app/Activity;Ljava/util/concurrent/Executor;Leod;Ltzy;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lenp;->a:Lenp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p4, p1, v0}, Lkd;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v5, p4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_14
    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_27

    nop

    nop

    :goto_15
    if-nez p1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "WINDOW_AREA_REAR_DISPLAY"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v8, Lenv;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Lkd;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p2, p3, p4}, Leny;->d(Landroid/app/Activity;Ljava/util/concurrent/Executor;Leod;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v2, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, v0, p2, v8, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_4

    nop

    nop

    :goto_23
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Leny;->d:Lenp;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p1, 0x10

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/app/Activity;Ljava/util/concurrent/Executor;Leod;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lenp;->d:Lenp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object p0, p0, Leny;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    iput-object v1, p0, Leny;->i:Landroidx/window/reflection/Consumer2;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

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

    :goto_7
    iget-object v0, p0, Leny;->d:Lenp;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, p2, p3, v0}, Lenu;-><init>(Leny;Ljava/util/concurrent/Executor;Leod;Landroidx/window/extensions/area/WindowAreaComponent;)V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Leny;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lenp;->e:Lenp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    invoke-interface {p3}, Leod;->dl()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1, v1}, Landroidx/window/extensions/area/WindowAreaComponent;->startRearDisplaySession(Landroid/app/Activity;Landroidx/window/extensions/core/util/function/Consumer;)V

    goto/32 :goto_16

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "The WindowArea feature is currently active, WindowAreaInfo#getActiveSessioncan be used to get an instance of the current active session"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lenu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1d
    invoke-interface {p3}, Leod;->dl()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v0, p0, Leny;->f:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Leny;->d:Lenp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p1, "The WindowArea feature is currently not available to be entered"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/app/Activity;Ljava/util/concurrent/Executor;Leob;)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Leny;->g:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, p2, p3, v0}, Lent;-><init>(Leny;Ljava/util/concurrent/Executor;Leob;Landroidx/window/extensions/area/WindowAreaComponent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lenp;->d:Lenp;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p1, v1}, Landroidx/window/extensions/area/WindowAreaComponent;->startRearDisplayPresentationSession(Landroid/app/Activity;Landroidx/window/extensions/core/util/function/Consumer;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

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

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    :goto_b
    new-instance v1, Lent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_d
    const-string p1, "The WindowArea feature is currently not available to be entered"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    invoke-interface {p3}, Leob;->dl()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Leny;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Leny;->e:Lenp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1a

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

    :goto_17
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Leno;Lenp;Leoz;)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lenq;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    iget-object p3, v0, Leoa;->e:Ljava/util/HashMap;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_5
    iget-object v2, v2, Lenq;->a:Lenp;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Leny;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

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

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p3, v2, v3, v4}, Leoa;-><init>(Leoz;Lenz;Landroid/os/Binder;Landroidx/window/extensions/area/WindowAreaComponent;)V

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Leoa;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v3, Landroid/os/Binder;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Leny;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    sget-object v2, Lenz;->a:Lenz;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p2, v0, Leoa;->e:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v3, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lenp;->b:Lenp;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Leoa;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    :goto_26
    iput-object p3, v0, Leoa;->a:Leoz;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    invoke-static {p2, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    const-string v1, "WINDOW_AREA_REAR_DISPLAY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Lenq;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1, p2}, Lenq;-><init>(Leno;Lenp;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Leny;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v3, Lenp;->b:Lenp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_30
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Leny;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_24

    nop

    nop

    :goto_35
    check-cast v2, Lenq;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_36
    invoke-direct {v2, p1, p2}, Lenq;-><init>(Leno;Lenp;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p2, v0, Leoa;->e:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_38
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    nop
.end method

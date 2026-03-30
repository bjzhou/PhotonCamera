.class public final Llvv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljfk;Lpdh;Ljez;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llvv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llvv;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_3
    iput-object p3, p0, Llvv;->c:Ljava/lang/Object;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Llvv;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Llxa;Llxb;Lghr;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Llvv;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Llvv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Llvv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, p1}, Ljfk;->f(Linb;Lrss;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Llvv;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_3
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_4
    invoke-interface {v0}, Lpdh;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llvv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Llvv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    const-string v0, "Failed to get MediaStoreRecord for %s, skipping."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljfk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lghr;

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
    iget-object p0, p0, Llvv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Llvv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v0, p1, Lhuf;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Llvv;->c:Ljava/lang/Object;

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

    nop

    :goto_13
    invoke-virtual {p0}, Lghr;->a()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

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

    :goto_16
    check-cast p0, Ljez;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljez;->e()V

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1, p1}, Ljfk;->k(Ljez;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0xfdf

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    iget-object v0, p0, Llvv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0xd

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

    nop

    :goto_1e
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->lev:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Ljez;->b:Linb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x13

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Llvw;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ljez;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2e
    check-cast v0, Ljez;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1, v0, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_2
    sget-object p1, Llvw;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-static {p1, v1, v0}, Ljfk;->k(Ljez;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0xfe0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljez;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

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

    :cond_1
    :goto_9
    goto/32 :goto_3a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Failed to get MediaStoreRecord for %s, skipping."

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Ljez;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Llvv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0, v0}, Ljfk;->f(Linb;Lrss;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    const-string v1, "Processing success state was not valid."

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Llvv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-interface {v0, v1, p1, v2}, Llxb;->i(Llxm;Llxh;Llxp;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-interface {p1}, Llxa;->a()Lpcj;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Error processing primary shot"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Llvv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Llvv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Ljez;->b:Linb;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2}, Llxa;->l()Llxp;

    move-result-object v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Lpdh;->a()V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lghr;->a()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Ljfk;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3f

    nop

    nop

    :goto_30
    iget-object v2, p0, Llvv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Llvv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_34
    invoke-interface {v1}, Llxa;->j()Llxm;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_37
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lghr;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Llvv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p1, Llxh;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Llvv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, p0, Llvv;->d:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

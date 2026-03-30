.class public final Lker;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhal;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lker;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lker;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lkes;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lker;->a:Ljava/lang/Object;

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
    iput p2, p0, Lker;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmxp;->g:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1
    sget-object p1, Ljsb;->b:Ljsb;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lrve;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lmxp;->u:Lqoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljrw;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lmxp;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f140640

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Ljrw;->s(Lryb;)V

    :goto_e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lmxp;->n(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lkes;

    nop

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

    :goto_15
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_19
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Loze;->g:Loze;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    sget-object v2, Loze;->h:Loze;

    nop

    goto :goto_1a

    nop

    nop

    nop

    :cond_2
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    sget-object v2, Loze;->g:Loze;

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_1a
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lkes;

    nop

    iget-object p1, p1, Lkes;->c:Lgvx;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lnne;->f:Lnne;

    nop

    invoke-virtual {p1, v3}, Lgvx;->a(Lnne;)Lgvw;

    move-result-object p1

    nop

    invoke-interface {p1}, Lgvw;->cM()Ljava/lang/Object;

    invoke-interface {p1}, Lgvw;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2}, Lgvw;->a(Ljava/lang/Object;)V

    move-object p1, p0

    nop

    check-cast p1, Lkes;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lkes;->d:Ltxm;

    nop

    nop

    check-cast p1, Lnjn;

    nop

    nop

    nop

    invoke-virtual {p1}, Lnjn;->b()Lpzi;

    move-result-object p1

    nop

    nop

    nop

    iget-object p1, p1, Lpzi;->k:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v2, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lkev;

    nop

    nop

    invoke-direct {v3, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->m(Lnne;Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    if-lez v0, :cond_5

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    :goto_1c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lkes;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_21
    goto/16 :goto_34

    nop

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_37

    nop

    nop

    :goto_24
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmxp;->u:Lqoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_29
    invoke-static {p1, v0}, Lryb;->m(Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p1

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

    nop

    :goto_2a
    sget-object v0, Lnne;->f:Lnne;

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

    :goto_2b
    invoke-virtual {p0, p1}, Lmxp;->j(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lker;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v1, Lqoz;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_32
    sget-object v0, Ljsb;->c:Ljsb;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, p1}, Lmxp;->j(Ljava/lang/String;)V

    :goto_34
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Lqoz;->h(Lnne;)Lrve;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4

    nop

    :goto_37
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lker;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v0, v1, :cond_9

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmxp;->b:Loyd;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3b
    const v1, 0x7f1406f4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3d
    sget-object v1, Lnne;->l:Lnne;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3f
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_42
    iget-object v0, p0, Lmxp;->b:Loyd;

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

    :goto_43
    invoke-virtual {p0, p1}, Lmxp;->n(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lmxp;->b:Loyd;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lmxp;->g:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Ljrw;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4b
    iget v0, p0, Lker;->b:I

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

    :goto_4c
    iget-object p0, p0, Lker;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lmxp;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop
.end method

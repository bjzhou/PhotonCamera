.class public final Ltj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ltj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Ltj;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop
.end method

.method public constructor <init>(Lucs;Lrn;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ltj;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltj;->b:Ljava/lang/Object;

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
    return-void

    nop

    nop

    :goto_4
    iput p3, p0, Ltj;->c:I

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
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p2

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

    nop

    nop

    :goto_7
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_9
    invoke-virtual {p0}, Lsp;->b()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Ltj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iget-object p1, p0, Ltj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lufv;->l(Lufs;)V

    :goto_10
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p1, Lsh;->a:Lsd;

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

    :goto_12
    iget-object p2, p2, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    monitor-exit p2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p2, Lucs;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Lsp;->b()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_17
    monitor-exit p2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lucs;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Lsp;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1a
    if-nez p2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p2, Lsp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    instance-of p1, p1, Lsf;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of p2, p1, Lsg;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p2, Lrn;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p2, p2, Lrn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    iget-object p0, p0, Ltj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lsf;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Luk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_25
    iget-object p2, p0, Lsp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    monitor-exit p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    :goto_2a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    :goto_2c
    if-nez p1, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    goto/16 :goto_41

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p1, Leao;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Luk;->b()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_37
    instance-of p2, p1, Lsh;

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

    :goto_38
    instance-of p2, p1, Lsg;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_39
    const v0, 0x14

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lsh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    monitor-exit p2

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3c
    instance-of p2, p1, Lsf;

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

    :goto_3d
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_40
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Ltj;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2, p0, p1}, Leto;->e(Levq;Leao;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_44
    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Ltj;->b:Ljava/lang/Object;

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

    nop

    :goto_46
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p2, p0, Ltj;->b:Ljava/lang/Object;

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

    :goto_48
    check-cast p1, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p1, Le;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4a
    if-nez p2, :cond_7

    nop

    goto/32 :goto_31

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Levq;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lsp;->d:I

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    if-eq v1, v2, :cond_6

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_8

    nop

    nop

    goto/16 :goto_3e

    nop

    :cond_8
    iput-object p1, p0, Lsp;->c:Lsd;

    nop

    nop

    nop

    iget-object p1, p0, Lsp;->a:Lufs;

    nop

    new-instance v1, Lsn;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2, v0, v2}, Lsn;-><init>(Lsp;Ltzy;I[B)V

    const/4 p0, 0x0

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    invoke-static {p1, v2, p0, v1, v0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Lucs;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4e
    monitor-enter p2

    nop

    :try_start_1
    iget-object v1, p1, Lsf;->a:Lou;

    nop

    nop

    nop

    if-eqz v1, :cond_b

    nop

    nop

    iget v1, v1, Lou;->a:I

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    invoke-static {v1, v2}, La;->p(II)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, La;->p(II)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_a

    nop

    const/4 v0, 0x2

    nop

    nop

    invoke-static {v1, v0}, La;->p(II)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto :goto_4f

    nop

    nop

    nop

    nop

    :cond_9
    sget-object v0, Loq;->a:Loq;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    check-cast v1, Lrn;

    nop

    nop

    nop

    iput-object v0, v1, Lrn;->g:La;

    nop

    iget-object v0, p1, Lsf;->a:Lou;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_50

    nop

    nop

    :cond_a
    :goto_4f
    sget-object v0, Lop;->a:Lop;

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrn;

    nop

    nop

    nop

    iput-object v0, v1, Lrn;->g:La;

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p1, p1, Lsf;->a:Lou;

    nop

    check-cast p0, Lrn;

    nop

    nop

    iput-object p1, p0, Lrn;->c:Lou;

    nop

    nop

    nop

    goto :goto_51

    nop

    nop

    nop

    nop

    :cond_b
    sget-object p1, Los;->a:Los;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lrn;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lrn;->g:La;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_51
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p1, Le;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_54
    iget-object p0, p0, Ltj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_55
    check-cast p0, Lsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_56
    move-object p2, p0

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

    :goto_57
    if-ne p2, v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_58
    iget p2, p0, Ltj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

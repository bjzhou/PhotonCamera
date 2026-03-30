.class final Lbds;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Ljava/lang/Integer;

.field final synthetic j:Lbch;

.field final synthetic k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIILjava/lang/Integer;Lbch;Ljava/lang/Integer;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lbds;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p8, p0, Lbds;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Lbds;->i:Ljava/lang/Integer;

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

    :goto_3
    iput p6, p0, Lbds;->f:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lbds;->d:Ljava/util/List;

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

    :goto_6
    iput-object p1, p0, Lbds;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iput-object p10, p0, Lbds;->j:Lbch;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p5, p0, Lbds;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object p11, p0, Lbds;->k:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lbds;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p7, p0, Lbds;->g:I

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
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4f

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    :goto_1
    if-lt v5, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_2
    if-lt v5, v4, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_29

    nop

    nop

    :goto_7
    iget-object v0, p0, Lbds;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lbds;->j:Lbch;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lbds;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lbds;->g:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_d
    move v5, v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, v6, v2, v7}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

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

    nop

    :goto_12
    move v5, v2

    nop

    :goto_13
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    const v0, 0x1d

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

    :goto_16
    move v3, v2

    nop

    :goto_17
    goto/32 :goto_5e

    nop

    nop

    :goto_18
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    check-cast v6, Lcpp;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v6, v2, v7}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_20
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_21

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    :goto_27
    check-cast v5, Lcpp;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v4, Lcpp;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2a
    sub-int v7, v1, v3

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

    :goto_2b
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lbds;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1, v6, v7, v8}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, v5, v2, v4}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_34
    move v7, v2

    nop

    nop

    :goto_35
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lbds;->k:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v5, v5, 0x1

    nop

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

    :goto_38
    move v8, v2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_57

    nop

    nop

    :goto_3a
    check-cast p1, Lcpo;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

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

    nop

    :goto_3c
    if-lt v3, v1, :cond_5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v1, p0, Lbds;->g:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v7, v2

    nop

    nop

    :goto_3f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lbds;->e:Ljava/util/List;

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

    :goto_41
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v7, v1, Lbch;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_44
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_45
    check-cast v6, Lcpp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_46
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

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

    nop

    :goto_48
    iget v3, p0, Lbds;->g:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_49
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4a
    goto :goto_3f

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4d
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sub-int v7, v1, v7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_51
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_52
    if-lt v5, v4, :cond_6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_53
    move v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_57
    sub-int v8, v3, v8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_58
    iget-object v3, p0, Lbds;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p1, v4, v2, v2}, Lcpo;->d(Lcpo;Lcpp;II)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v3, p0, Lbds;->h:I

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lbds;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lt v3, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_60

    nop

    nop

    :goto_5f
    check-cast v6, Lcpp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_60
    iget v4, p0, Lbds;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop
.end method

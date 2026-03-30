.class public abstract Lfhn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lfht;


# instance fields
.field protected final d:Ljava/util/Map;

.field protected final e:Ljava/util/List;

.field protected final f:Ljava/util/List;

.field protected g:Z

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Lfhs;

.field public l:I

.field protected m:Lfhs;

.field protected n:B

.field protected o:I

.field protected p:F

.field public q:I

.field public r:Lfhc;

.field public s:Lfhd;

.field public t:Lfhe;

.field protected u:Lfhf;

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field public z:Lfhs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

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

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    sput-object v0, Lfhn;->a:Lfht;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->srhpavQry:Ljava/lang/String;

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

    nop

    :goto_c
    new-instance v0, Lfht;

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/TreeMap;

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

    :goto_3
    iput-object v0, p0, Lfhn;->e:Ljava/util/List;

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
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lfhn;->f:Ljava/util/List;

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
    iput-object v0, p0, Lfhn;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method protected constructor <init>(Lfhn;)V
    .locals 4

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Lfhn;->j:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p1, Lfhn;->x:Z

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p1, Lfhn;->w:Z

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lfhn;->v:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object v0, p1, Lfhn;->u:Lfhf;

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

    nop

    :goto_7
    iput v0, p0, Lfhn;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8
    iget-object v0, p1, Lfhn;->e:Ljava/util/List;

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

    :goto_9
    iput v0, p0, Lfhn;->j:I

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v2, p0, Lfhn;->f:Ljava/util/List;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lfhn;->t:Lfhe;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lfhn;->q:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p1, Lfhn;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lfhn;->h:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p1, Lfhn;->y:Z

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

    :goto_13
    iput-object v0, p0, Lfhn;->s:Lfhd;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v2, p0, Lfhn;->k:Lfhs;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Lfhn;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p1, Lfhn;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget v0, p1, Lfhn;->l:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/TreeMap;

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

    :goto_1c
    iput-object v0, p0, Lfhn;->u:Lfhf;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v0, p0, Lfhn;->y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Lfhn;->l:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_49

    nop

    nop

    :goto_24
    iput-object v0, p0, Lfhn;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v0, p0, Lfhn;->g:Z

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

    :goto_26
    iput-object p1, p0, Lfhn;->z:Lfhs;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p1, Lfhn;->r:Lfhc;

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

    nop

    :goto_28
    iput v0, p0, Lfhn;->i:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Lfhn;->m:Lfhs;

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

    :goto_2a
    iget-object v0, p1, Lfhn;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    move-object v2, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_31

    nop

    :goto_2d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v0, p1, Lfhn;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_30
    invoke-direct {v1, v0}, Lfhs;-><init>(Lfhs;)V

    :goto_31
    goto/32 :goto_29

    nop

    nop

    :goto_32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_33
    iget-object v3, p1, Lfhn;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_35
    iput-boolean v0, p0, Lfhn;->w:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v0, p1, Lfhn;->p:F

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

    :goto_37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x1f

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v1, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p1, Lfhn;->m:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3c
    iput-boolean v0, p0, Lfhn;->x:Z

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

    :goto_3d
    iget-object v0, p1, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3e
    iput v0, p0, Lfhn;->p:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_47

    nop

    nop

    :goto_40
    invoke-direct {v2, v0}, Lfhs;-><init>(Lfhs;)V

    :goto_41
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_21

    nop

    nop

    :goto_43
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_44
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_45
    iget-byte v0, p1, Lfhn;->n:B

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_47
    iget-boolean v0, p1, Lfhn;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_48
    iput-byte v0, p0, Lfhn;->n:B

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v2, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p1, Lfhn;->t:Lfhe;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p1, Lfhn;->k:Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4c
    iget-boolean v0, p1, Lfhn;->v:Z

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

    :goto_4d
    iput-object v0, p0, Lfhn;->r:Lfhc;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p1, p1, Lfhn;->z:Lfhs;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p1, Lfhn;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()Lfhn;
.end method

.method public d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lfhn;->p:F

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e()Lfhs;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lfhs;-><init>(Lfhs;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfhn;->m:Lfhs;

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

    :goto_2
    new-instance v0, Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop
.end method

.method public final f()Lfhs;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfhn;->k:Lfhs;

    nop

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfhs;

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

    :goto_3
    invoke-direct {v0, p0}, Lfhs;-><init>(Lfhs;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final g()Ljava/util/List;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfhn;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final h()Ljava/util/List;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfhn;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final i(I)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x64

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lfhn;->a:Lfht;

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
    const-string p1, "Ignoring JPEG quality that falls outside the expected range"

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

    :goto_3
    int-to-byte p1, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz p1, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gt p1, v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    iput-byte p1, p0, Lfhn;->n:B

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
.end method

.method public final j(II)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 p1, -0x1

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v0, p1

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
    iput p1, p0, Lfhn;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    move p1, p2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput v0, p0, Lfhn;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto :goto_f

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    if-gt p1, p2, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Lfhn;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    if-le p1, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_e
    move v0, p2

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Lfhs;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lfhn;->a:Lfht;

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
    iput-object v0, p0, Lfhn;->m:Lfhs;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lfhs;-><init>(Lfhs;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const-string p1, "Attempt to change photo size while locked"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lfhn;->g:Z

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop
.end method

.method public final l(Lfhs;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Attempt to change preview size while locked"

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

    :goto_1
    new-instance v0, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lfhn;->g:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lfhn;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lfhn;->k:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p1}, Lfhs;-><init>(Lfhs;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

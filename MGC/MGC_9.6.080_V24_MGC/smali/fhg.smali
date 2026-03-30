.class public Lfhg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfht;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field protected final d:Ljava/util/TreeSet;

.field protected final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field protected final g:Ljava/util/TreeSet;

.field public final h:Ljava/util/EnumSet;

.field protected final i:Ljava/util/EnumSet;

.field protected final j:Ljava/util/EnumSet;

.field protected final k:Ljava/util/EnumSet;

.field protected final l:Ljava/util/EnumSet;

.field protected m:Lfhs;

.field protected n:I

.field protected o:I

.field protected p:F

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:F

.field public u:F

.field protected v:F

.field public final w:Landroidx/wear/ambient/SharedLibraryVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const-string v1, "CamCapabs"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lfhg;->a:Lfht;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

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

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public constructor <init>(Landroidx/wear/ambient/SharedLibraryVersion;)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfhg;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/TreeSet;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lfhg;->g:Ljava/util/TreeSet;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lfhg;->l:Ljava/util/EnumSet;

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

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-class v0, Lfhe;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/TreeSet;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lfhg;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfhg;->k:Ljava/util/EnumSet;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lfhg;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lfhg;->e:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-class v0, Lfhd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Lfhc;

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

    :goto_14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/ArrayList;

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

    nop

    :goto_17
    const-class v0, Lfhb;

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

    :goto_18
    iput-object v0, p0, Lfhg;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lfhg;->d:Ljava/util/TreeSet;

    nop

    nop

    goto/32 :goto_d

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

    nop

    :goto_1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lfhg;->w:Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lfhg;->f:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    const-class v0, Lfhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lfhg;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfhg;)V
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Lfhg;->u:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v5, Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2
    iget v0, p1, Lfhg;->o:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    goto/32 :goto_9

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

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_37

    nop

    nop

    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    :goto_8
    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v10, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v9}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lfhg;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Lfhg;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p1, Lfhg;->s:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v6, p0, Lfhg;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_12
    iget v0, p1, Lfhg;->p:F

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

    :goto_13
    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Lfhg;->r:I

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

    :goto_15
    iget v0, p1, Lfhg;->v:F

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v8, p0, Lfhg;->j:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v3, p0, Lfhg;->e:Ljava/util/ArrayList;

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

    :goto_19
    iput v0, p0, Lfhg;->t:F

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

    :goto_1a
    invoke-virtual {v7, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_35

    nop

    nop

    :goto_1b
    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p1, Lfhg;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p1, Lfhg;->g:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-class v8, Lfhd;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_20
    iput-object v0, p0, Lfhg;->m:Lfhs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

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

    :goto_22
    iput v0, p0, Lfhg;->n:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    invoke-static {v10}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v5, p0, Lfhg;->g:Ljava/util/TreeSet;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v9, p0, Lfhg;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p1, Lfhg;->m:Lfhs;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, p1, Lfhg;->t:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p1, Lfhg;->d:Ljava/util/TreeSet;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    iget-object v11, p1, Lfhg;->b:Ljava/util/ArrayList;

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

    nop

    :goto_2b
    iput-object v2, p0, Lfhg;->d:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Lfhg;->s:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v10, p0, Lfhg;->l:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    const-class v6, Lfhe;

    nop

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

    :goto_2f
    invoke-static {v8}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p1, Lfhg;->e:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_31
    iput v0, p0, Lfhg;->o:I

    nop

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

    :goto_32
    iget-object p1, p1, Lfhg;->w:Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v0, p0, Lfhg;->u:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_56

    nop

    nop

    :goto_35
    iget-object v0, p1, Lfhg;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_36
    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p1, Lfhg;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_39
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, p1, Lfhg;->r:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v7, p0, Lfhg;->i:Ljava/util/EnumSet;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3f
    iget v0, p1, Lfhg;->q:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_40
    const-class v9, Lfhf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_41
    iget-object v0, p1, Lfhg;->i:Ljava/util/EnumSet;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p1, Lfhg;->k:Ljava/util/EnumSet;

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

    :goto_43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v0, p0, Lfhg;->p:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v0, p0, Lfhg;->v:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v8, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v0, p1, Lfhg;->n:I

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

    :goto_49
    iget-object v0, p1, Lfhg;->c:Ljava/util/ArrayList;

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

    :goto_4a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_1d

    nop

    nop

    :goto_4b
    iput-object p1, p0, Lfhg;->w:Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-class v10, Lfhb;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4f
    const-class v7, Lfhc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_50
    new-instance v2, Ljava/util/TreeSet;

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

    :goto_51
    iput-object v1, p0, Lfhg;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    :goto_53
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p1, Lfhg;->l:Ljava/util/EnumSet;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_55
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iput-object v4, p0, Lfhg;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop
.end method


# virtual methods
.method public final d(Lfhb;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lfhg;->l:Ljava/util/EnumSet;

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

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lfhc;)Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfhg;->i:Ljava/util/EnumSet;

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

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(Lfhd;)Z
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfhg;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

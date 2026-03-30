.class public Lhco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhdd;
.implements Loyd;


# static fields
.field private static final d:Lsdb;

.field public static g:Z


# instance fields
.field public a:Lpog;

.field public final b:Loyn;

.field public final c:Ljava/util/List;

.field private final e:Lowu;

.field private final f:Loyd;

.field private h:Z

.field private final i:Landroid/content/Intent;

.field private final j:Lhtr;

.field private final k:Ljava/util/List;

.field private l:Lkog;

.field private m:Lkog;

.field private final n:Lpoi;

.field private final o:Lhif;

.field private final p:Lhdn;

.field private final q:Lgvg;

.field private final r:Lrbh;


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lgmp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    const v1, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhco;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-direct {v0, p1, v1}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

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

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_d
    const/16 v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Lpog;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_b

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

    nop

    :goto_5
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    check-cast p0, Lhcn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhco;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Lhcn;->d:Z

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    nop

    :goto_10
    invoke-direct {v0, p1, v1}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_11
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xb

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
    new-instance v0, Lgmp;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_17
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "hco"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhco;->d:Lsdb;

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

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpoi;Lowu;Lhif;Lrbh;Lhdn;Lgvg;Lhtr;Landroid/content/Intent;)V
    .locals 4

    goto/32 :goto_27

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    new-instance p2, Lhcn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    :goto_3
    iput-object p1, p0, Lhco;->n:Lpoi;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhco;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p4}, Lhco;->33b3102b6558811a7b7629a1e8e59bd2m(Lpog;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Loxz;->a(Loyd;)Loyd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    iput-object p5, p0, Lhco;->p:Lhdn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_a
    iget-object p4, p0, Lhco;->a:Lpog;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p5, p4}, Lhdn;->e([Lpog;)V

    :goto_c
    goto/32 :goto_21

    nop

    nop

    :goto_d
    check-cast p8, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput-object v1, p4, v2

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_f
    new-array p5, v2, [Lpog;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p8, p0, Lhco;->i:Landroid/content/Intent;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p4}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_12
    move-object p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-array p4, v0, [Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p3, Lpdr;->b:Lpdr;

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
    new-instance p2, Lhcn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_55

    nop

    nop

    :goto_1a
    aput-object p4, p5, p1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p2, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    sget-object p4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p2, Lpog;->a:Lpog;

    nop

    nop

    :goto_1e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5a

    nop

    nop

    :goto_20
    iput-object p4, p0, Lhco;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    invoke-static {p8}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_24
    invoke-direct {p2, p4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, " camera present"

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    const v0, 0x20

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p8, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    :goto_29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_2a
    iget-object p8, p2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p6, p0, Lhco;->q:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p6}, Lgvg;->j()Z

    move-result p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lpog;->b:Lpog;

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

    :goto_2e
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2f
    sput-boolean p1, Lhco;->g:Z

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Lhco;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v0, v1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p4, p0, Lhco;->r:Lrbh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_35
    move-object p8, p2

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

    :goto_36
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v1, Lfxd;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    iput-object p2, p0, Lhco;->a:Lpog;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3a
    check-cast p1, Lpog;

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

    nop

    :goto_3b
    invoke-direct {p0}, Lhco;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result p4

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_3c
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_52

    nop

    :goto_3e
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3f
    const-string p5, "No "

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-array p4, v2, [Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_17

    nop

    :goto_42
    aput-object v1, p4, p1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p3, p4, v0, v0}, Lhif;->a(Lpog;II)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_4
    goto/32 :goto_69

    nop

    nop

    :goto_45
    invoke-virtual {p4}, Lpog;->name()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_c

    nop

    nop

    :goto_47
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_48
    new-instance p4, Lgiq;

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

    :goto_49
    move v1, v2

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4b
    if-nez p6, :cond_6

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object p3, p0, Lhco;->o:Lhif;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4d
    invoke-virtual {p5, p4}, Lhdn;->e([Lpog;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, p1}, Lhco;->33b3102b6558811a7b7629a1e8e59bd2m(Lpog;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p1, p2, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object p2, p0, Lhco;->e:Lowu;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_55
    iput-object v0, p0, Lhco;->k:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_8c

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_58
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_59
    invoke-direct {p4, v0}, Lgiq;-><init>(Loyd;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object p4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5b
    invoke-virtual {p5, p4}, Lhdn;->f(Lpog;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5d
    invoke-interface {p7, p0}, Lhtr;->c(Ljava/lang/Throwable;)V

    :goto_5e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0, p2, p3, p5}, Lhtn;-><init>(Ljava/lang/String;Lpdr;[Lpog;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance p0, Lhtn;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_61
    sget-object p4, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v1, p0, v3}, Lfxd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_65
    sget-object p4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_66
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_67
    goto/16 :goto_85

    nop

    nop

    :goto_68
    goto/32 :goto_84

    nop

    nop

    :goto_69
    sget-object p2, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-ne p4, p8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    :goto_6b
    aput-object v1, p4, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object p4, Lpog;->b:Lpog;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6d
    invoke-direct {p0}, Lhco;->ccb4c19b7dbd16be9d2a43125797659dm()Lkog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_1e

    nop

    nop

    :goto_70
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_71
    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_72
    if-eqz p4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_73
    invoke-direct {p2, p4, v1}, Lhcn;-><init>(Lpog;Z)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    :goto_75
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_76
    invoke-direct {p0}, Lhco;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result p8

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_77
    if-eqz p4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {p0, p4}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7a
    iput-boolean p1, p0, Lhco;->h:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7b
    move v1, v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {p0}, Lhco;->ccb4c19b7dbd16be9d2a43125797659dm()Lkog;

    move-result-object p2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    :goto_7e
    goto/32 :goto_2

    nop

    nop

    :goto_7f
    invoke-direct {p2, p4, v1}, Lhcn;-><init>(Lpog;Z)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_80
    const/16 v3, 0xb

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_81
    if-nez p4, :cond_a

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p5, p4}, Lhdn;->e([Lpog;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_83
    new-array p4, v2, [Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move v1, p1

    nop

    nop

    :goto_85
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_86
    aput-object v1, p4, p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_88
    invoke-direct {p0}, Lhco;->a74c8a79bf0ef0e20983317119c87838m()Lkog;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_89
    iput-object p7, p0, Lhco;->j:Lhtr;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8a
    iput-object v0, p0, Lhco;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_8b
    sget-object p4, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized a74c8a79bf0ef0e20983317119c87838m()Lkog;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lhco;->h:Z

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Lhco;->n:Lpoi;

    nop

    nop

    nop

    nop

    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    invoke-static {v0, v1}, Lhco;->q(Lpoi;Lpog;)Lkog;

    move-result-object v0

    nop

    iput-object v0, p0, Lhco;->m:Lkog;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lhco;->h:Z

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lhco;->m:Lkog;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

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
    const v0, 0x13

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
    monitor-exit p0

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

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()Z
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const-wide/16 v2, 0x2

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    new-instance v0, Lgdm;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lgdm;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

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

    :goto_c
    const v0, 0x15

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0x9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

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

    :goto_15
    iget-object p0, p0, Lhco;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private final declared-synchronized ccb4c19b7dbd16be9d2a43125797659dm()Lkog;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-boolean v0, Lhco;->g:Z

    nop

    nop

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Lhco;->n:Lpoi;

    nop

    nop

    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    invoke-static {v0, v1}, Lhco;->q(Lpoi;Lpog;)Lkog;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhco;->l:Lkog;

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    sput-boolean v0, Lhco;->g:Z

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lhco;->l:Lkog;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private static q(Lpoi;Lpog;)Lkog;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lpoi;->e(Lpog;)Lpnx;

    move-result-object p1

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

    :goto_6
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a()Lpog;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lpog;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    check-cast p0, Loxv;

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
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhco;->b:Loyn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhco;->f:Loyd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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
.end method

.method public final bridge synthetic cM()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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
    check-cast p0, Lhdc;

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

    :goto_3
    iget-object p0, p0, Lhco;->f:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()Lrss;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhco;->a()Lpog;

    move-result-object v0

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
    invoke-virtual {p0, v0}, Lhco;->k(Lpog;)Lkog;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final e(Lpog;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lhcn;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    iget-object p0, p0, Lhco;->k:Ljava/util/List;

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

    :goto_8
    const/4 p1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lhcn;->c:Z

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lgmp;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-direct {v0, p1, v1}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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
.end method

.method public final f(Lpog;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhco;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lhco;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result v0

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
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    const v1, 0x4

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

    :goto_2
    const/4 v1, 0x4

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

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v0, 0x17

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
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lhco;->h(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lgbg;

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

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lgbg;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 7

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_49

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

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

    :goto_3
    new-instance v2, Lhtn;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lhco;->q:Lgvg;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    new-instance v3, Lgct;

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

    :goto_7
    const/16 v4, 0xb

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v3, p1}, Lhif;->a(Lpog;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, p1, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    if-eq p1, v2, :cond_1

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7e

    nop

    :goto_f
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lhco;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_14
    iget-object p1, p0, Lhco;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2, v1, v4}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    aput-object v1, v5, v6

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

    :goto_19
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v1}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v0}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lhco;->r:Lrbh;

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

    nop

    :goto_21
    sget-object v2, Lpog;->b:Lpog;

    nop

    :goto_22
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3, p0, v4}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v1}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_26
    invoke-direct {v3, p1, v4}, Lghf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_27
    const v0, 0x16

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

    :goto_28
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2b
    check-cast v2, Ljava/lang/Iterable;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Lghf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lgvg;->j()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2f
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v2, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_31
    const/4 v3, 0x3

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

    :goto_32
    iget-object v2, p0, Lhco;->c:Ljava/util/List;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Lhdn;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_34
    iget-object p1, p0, Lhco;->q:Lgvg;

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

    nop

    :goto_35
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v2, v3, p1}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lhco;->j:Lhtr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v3, Lhee;->b:Lhee;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3a
    invoke-direct {v0, v1, v3}, Lgmp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5a

    nop

    nop

    :goto_3b
    goto/16 :goto_79

    nop

    nop

    :goto_3c
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_3d
    new-instance v2, Lgmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3e
    invoke-static {v2}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v3}, Lhdn;->d(Lhee;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_42
    iget-boolean p1, p1, Lhcn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_43
    invoke-static {v0, v3, p1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :goto_44
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_45
    const-string v3, " camera present"

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p1, Lrbh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v2, v3, v4, v5}, Lhtn;-><init>(Ljava/lang/String;Lpdr;[Lpog;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v5, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->yPjMSjoeYbHLJt:Ljava/lang/String;

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

    :goto_49
    invoke-direct {p0, v0}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p1

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

    nop

    nop

    :goto_4a
    new-instance v0, Lgmp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Lhdn;->f(Lpog;)V

    :goto_4c
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_22

    nop

    nop

    :goto_4e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/16 v3, 0xa

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Lhco;->i()Z

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance v3, Lgng;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lhco;->a()Lpog;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, v3}, Lhdn;->i(Lhee;)V

    goto/32 :goto_73

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lgvg;->j()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_59
    invoke-direct {p0, v1}, Lhco;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpog;)Z

    move-result p1

    nop

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

    :goto_5a
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

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

    :goto_5b
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz p1, :cond_a

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

    :cond_a
    goto/32 :goto_4

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lhco;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v4, 0x5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v4, Lpdr;->b:Lpdr;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_61
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_62
    check-cast v0, Lhdn;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_63
    invoke-interface {p1, v2}, Lhtr;->c(Ljava/lang/Throwable;)V

    :goto_64
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast p1, Lhcn;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_66
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_67
    iget-object p1, p1, Lrbh;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_68
    iget-object p1, p0, Lhco;->q:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Lgvg;->j()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6a
    if-eqz v0, :cond_b

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

    nop

    :cond_b
    :goto_6b
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6d
    move p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v0, Lhcn;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_70
    if-nez v0, :cond_d

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Lpog;->name()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_72
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, p1, Lrbh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0, v1}, Lhco;->33b3102b6558811a7b7629a1e8e59bd2m(Lpog;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, v2}, Lhco;->f(Lpog;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_76
    if-eq v0, v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Lhco;->o:Lhif;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_78
    move p1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7a
    new-array v5, v5, [Lpog;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_1f

    nop

    :goto_7f
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-boolean v0, v0, Lhcn;->d:Z

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Lhco;->p:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0}, Lhco;->a()Lpog;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_86
    if-nez p1, :cond_f

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

    :cond_f
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_87
    sget-object v3, Lhee;->b:Lhee;

    nop

    goto/32 :goto_33

    nop

    nop
.end method

.method public final i()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhco;->a()Lpog;

    move-result-object p0

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
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    sget-object v0, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final j()Z
    .locals 1

    goto/32 :goto_2

    nop

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
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhco;->a()Lpog;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Lpog;)Lkog;
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x3bc

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "No OneCameraCharacteristics found for: %s"

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

    nop

    :goto_7
    invoke-direct {p0}, Lhco;->a74c8a79bf0ef0e20983317119c87838m()Lkog;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lhco;->d:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-interface {p1, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_19

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lhco;->a()Lpog;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lhco;->a74c8a79bf0ef0e20983317119c87838m()Lkog;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lhco;->ccb4c19b7dbd16be9d2a43125797659dm()Lkog;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lpog;->b:Lpog;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    :goto_17
    invoke-direct {p0}, Lhco;->ccb4c19b7dbd16be9d2a43125797659dm()Lkog;

    move-result-object p0

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

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "Back Camera"

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

    :goto_3
    sget-object p0, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->xyjID:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lhco;->i()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-ne v0, p0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

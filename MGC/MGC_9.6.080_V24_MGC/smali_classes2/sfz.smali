.class public final Lsfz;
.super Lsfm;
.source "PG"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Lsew;

.field public static final c:Lsfx;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/logging/Level;

.field private final f:Ljava/util/Set;

.field private final g:Lsew;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

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
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    invoke-static {v8}, Lsez;->a(Ljava/util/Set;)Lsew;

    move-result-object v9

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
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    sput-object v9, Lsfz;->b:Lsew;

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

    :goto_5
    aput-object v3, v1, v2

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

    :goto_6
    sput-object v0, Lsfz;->c:Lsfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v2 .. v9}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    aput-object v3, v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-array v1, v1, [Lsdr;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    sput-object v8, Lsfz;->a:Ljava/util/Set;

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

    :goto_10
    sget-object v3, Lsee;->a:Lsdr;

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

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1a

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    move-object v2, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v3, Lsde;->a:Lsdr;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lsfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_18
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x1

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

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    sget-object v3, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v3, v1, v2

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

    :goto_20
    sget-object v6, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    const/4 v7, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/util/logging/Level;Ljava/util/Set;Lsew;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lsfz;->f:Ljava/util/Set;

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

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p1, p0, Lsfz;->h:I

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

    nop

    :goto_4
    invoke-static {p1, p2, p3}, Lsgj;->d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lsfz;->d:Ljava/lang/String;

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

    :goto_6
    iput-object p5, p0, Lsfz;->e:Ljava/util/logging/Level;

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

    :goto_7
    invoke-direct {p0, p2}, Lsfm;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lsfz;->g:Lsew;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static e(Lsej;Ljava/lang/String;ILjava/util/logging/Level;Ljava/util/Set;Lsew;)V
    .locals 2

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    :goto_2
    goto/16 :goto_35

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lsej;->l()Lsfl;

    move-result-object p3

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    invoke-static {p2, p5, p4}, Lsfk;->c(Lsfg;Lsew;Ljava/lang/StringBuilder;)V

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    :goto_8
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    :goto_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, p4}, Lsep;->d(Lsdr;)Ljava/lang/Object;

    move-result-object p3

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

    :goto_e
    if-ne p0, p4, :cond_1

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lsej;->k()Lsep;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

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

    :goto_11
    invoke-interface {p0}, Lsej;->k()Lsep;

    move-result-object p3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p3, 0x1

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

    :goto_14
    invoke-static {p0}, Lsgj;->e(Ljava/util/logging/Level;)I

    move-result p0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_15
    goto/16 :goto_1

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lsej;->f()Lsdj;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2, v0}, Lsfg;->g(Lsep;Lsep;)Lsfg;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string p2, "(REDACTED) "

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

    :goto_1a
    if-nez p4, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lsfk;->a(Lsej;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v0}, Lsep;->d(Lsdr;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    if-ne p0, p4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p4, 0x5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x10

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    check-cast p3, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v0

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

    :goto_27
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p4, Ljava/lang/StringBuilder;

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

    nop

    :goto_2a
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p3, :cond_5

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

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0}, Lsej;->l()Lsfl;

    move-result-object p2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_30
    invoke-static {p0, p2, p4}, Lsfk;->b(Lsej;Lsfg;Ljava/util/Set;)Z

    move-result p4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    invoke-interface {p0}, Lsej;->k()Lsep;

    move-result-object v0

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

    :goto_32
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lt v0, p3, :cond_7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3e

    nop

    nop

    :goto_36
    if-ne p0, p4, :cond_8

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_47

    nop

    nop

    :goto_37
    const-string v1, " "

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

    :goto_38
    invoke-static {}, Lsfj;->f()Lsep;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_39
    invoke-static {v0, v1, p4}, Lsgj;->f(ILsdj;Ljava/lang/StringBuilder;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    iget-object p2, p2, Lsfl;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_a

    nop

    :goto_3e
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3f
    if-nez p3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p4, Lsde;->a:Lsdr;

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

    :goto_42
    const/4 p4, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_43
    const/4 p4, 0x3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_a

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    :goto_45
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_46
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4b
    if-nez p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4c
    if-ne p0, v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {p0, p4}, Lsgx;->e(Lsej;Ljava/lang/StringBuilder;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v0, Lsee;->a:Lsdr;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop
.end method


# virtual methods
.method public final c(Lsej;)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Lsfz;->e:Ljava/util/logging/Level;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x2

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

    :goto_6
    iget-object v1, p0, Lsfz;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static/range {v0 .. v5}, Lsfz;->e(Lsej;Ljava/lang/String;ILjava/util/logging/Level;Ljava/util/Set;Lsew;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Lsfz;->f:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    iget-object v5, p0, Lsfz;->g:Lsew;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x1e

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
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

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
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget-object p0, p0, Lsfz;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    const-string p0, "all"

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

    :goto_c
    invoke-static {p1}, Lsgj;->e(Ljava/util/logging/Level;)I

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

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
.end method

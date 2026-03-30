.class public final Lopn;
.super Lolk;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Z

.field public final d:D

.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

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

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lomr;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x5

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    sput-object v0, Lopn;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lomr;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BIII)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lopn;->e:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iput-boolean p4, p0, Lopn;->c:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput p11, p0, Lopn;->i:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lopn;->b:J

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p9, p0, Lopn;->g:I

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

    :goto_5
    iput p10, p0, Lopn;->h:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lopn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_6

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

    :goto_9
    iput-object p8, p0, Lopn;->f:[B

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide p5, p0, Lopn;->d:D

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
.end method

.method private static b(II)I
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-lt p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return p0

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
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;)V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-ne v1, v3, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_1
    if-eq v1, v3, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lopn;->h:I

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

    :goto_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    :goto_5
    iget-object v0, p0, Lopn;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Lopn;->b:J

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f
    const-string v0, "Flag("

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_10
    const-string v3, "Invalid type: "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->RAAfAkkwbJW:Ljava/lang/String;

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

    nop

    :goto_12
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v1, p0, Lopn;->d:D

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x0

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

    :goto_1b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    iget v1, p0, Lopn;->g:I

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lopn;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    :goto_27
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lopn;->f:[B

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-boolean v1, p0, Lopn;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2e
    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0xe

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    :goto_32
    iget v1, p0, Lopn;->g:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_46

    nop

    nop

    :goto_36
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    :goto_39
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3e
    iget p0, p0, Lopn;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v0, ", "

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lopn;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_42
    goto :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_46
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_48
    if-lez v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_49
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4a
    const-string v4, "\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_0
    cmp-long p0, v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    if-eqz v4, :cond_1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v4, p1, Lopn;->f:[B

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    :goto_5
    goto/16 :goto_71

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_4e

    nop

    :goto_9
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    goto/16 :goto_4e

    nop

    nop

    :goto_c
    goto/32 :goto_5b

    nop

    nop

    :goto_d
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_16
    if-eq v0, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iget-boolean p0, p0, Lopn;->c:Z

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

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    array-length v0, v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_4e

    nop

    :goto_1f
    goto/32 :goto_53

    nop

    nop

    :goto_20
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    :goto_22
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_24
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_73

    nop

    :cond_5
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v1}, Lopn;->b(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_31

    nop

    nop

    :goto_27
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p1, Lopn;->f:[B

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

    :goto_2c
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v4, :cond_7

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v4, p0, Lopn;->b:J

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v0, v4, :cond_8

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    :goto_30
    goto/16 :goto_14

    nop

    nop

    :goto_31
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_32
    array-length v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ne v0, v3, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean p1, p1, Lopn;->c:Z

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_35
    iget-object v0, p0, Lopn;->f:[B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_36
    aget-byte v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_37
    iget-wide p0, p1, Lopn;->b:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lopn;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move v0, v1

    nop

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

    :goto_3e
    array-length p1, p1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3f
    iget-wide p0, p1, Lopn;->d:D

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_4e

    nop

    :goto_41
    goto/32 :goto_3b

    nop

    nop

    :goto_42
    if-ne v0, v4, :cond_b

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_43
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p1, p1, Lopn;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_45
    aget-byte v1, v1, v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lopn;->f:[B

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eq p0, p1, :cond_c

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_c
    :goto_4a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

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

    :goto_4d
    move v0, v3

    nop

    nop

    :goto_4e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v4, 0x3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p0, p1}, Lopn;->b(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_51
    iget-object v1, p0, Lopn;->a:Ljava/lang/String;

    nop

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

    :goto_52
    goto/32 :goto_12

    nop

    nop

    :goto_53
    if-nez p0, :cond_d

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_d
    :goto_54
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lopn;->f:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_57
    array-length p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_59
    const-string p1, "Invalid enum value: "

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5b
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5c
    throw p0

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v0, p0, Lopn;->g:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p1, Lopn;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_60
    iget v1, p1, Lopn;->g:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-wide v0, p0, Lopn;->d:D

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_71

    nop

    :goto_63
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_64
    if-eq p0, p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_e
    :goto_65
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_67
    if-eqz p1, :cond_f

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_f
    goto/32 :goto_22

    nop

    nop

    :goto_68
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6b
    move v0, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v1, p1, Lopn;->f:[B

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6d
    iget-object v1, p1, Lopn;->f:[B

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

    :goto_6e
    const v1, 0x15

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lopn;->e:Ljava/lang/String;

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

    :goto_70
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_10
    :goto_71
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_72
    goto :goto_71

    nop

    nop

    :goto_73
    goto/32 :goto_67

    nop

    nop

    :goto_74
    if-lt v2, v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_75
    if-eq v0, v4, :cond_12

    nop

    goto/32 :goto_c

    nop

    :cond_12
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-ltz p0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Lopn;->f:[B

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lopn;->h:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lopn;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Lopn;->i:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c
    iget v2, p1, Lopn;->g:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    :goto_10
    iget-wide v3, p0, Lopn;->b:J

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

    :goto_11
    iget v0, p0, Lopn;->g:I

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

    :goto_12
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    if-ne v0, v3, :cond_2

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean p0, p0, Lopn;->c:Z

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_15
    iget-object p1, p1, Lopn;->f:[B

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

    :goto_16
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_18
    iget-wide v3, p0, Lopn;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_19
    iget-object p1, p1, Lopn;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_1b
    goto/32 :goto_4a

    nop

    nop

    :goto_1c
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lopn;->f:[B

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_45

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    if-ne v0, v3, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p1, Lopn;->i:I

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

    nop

    :goto_28
    iget-object v0, p0, Lopn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_29
    iget v3, p1, Lopn;->h:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->tBCOPVS:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_7

    nop

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
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v0, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    :goto_30
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_14

    nop

    nop

    :goto_32
    check-cast p1, Lopn;

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

    nop

    :goto_33
    cmp-long p0, v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v0, p1, Lopn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    if-eqz p0, :cond_9

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    :goto_36
    return v1

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return p0

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3a
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    :goto_3c
    iget-wide p0, p1, Lopn;->b:J

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3d
    if-eq v0, v2, :cond_b

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4

    nop

    nop

    :goto_3e
    if-eq p0, p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return v2

    nop

    nop

    :goto_42
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-boolean p1, p1, Lopn;->c:Z

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_44
    cmpl-double p0, v3, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_45
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return v2

    nop

    :goto_47
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v2, v3, :cond_d

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_49
    return v1

    nop

    nop

    :goto_4a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-wide p0, p1, Lopn;->d:D

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

    :goto_4c
    iget-object v2, p1, Lopn;->a:Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lopn;->a(Ljava/lang/StringBuilder;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v3, v0}, Lolx;->m(Landroid/os/Parcel;II)V

    :goto_1
    goto/32 :goto_38

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lomr;->b(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_8
    iget p0, p0, Lopn;->i:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a
    iget-object v0, p0, Lopn;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v1, v0}, Lolx;->m(Landroid/os/Parcel;II)V

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lopn;->a:Ljava/lang/String;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

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

    nop

    :goto_f
    invoke-static {p0}, Lomr;->a(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lopn;->c:Z

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    cmpl-double v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v1, v0}, Lolx;->p(Landroid/os/Parcel;I[B)V

    :goto_16
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lomr;->a(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1a
    invoke-static {p1, v2, v3}, Lolx;->l(Landroid/os/Parcel;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v1, v0}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    :goto_1c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    goto/32 :goto_36

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, v2, v0, v1}, Lolx;->n(Landroid/os/Parcel;IJ)V

    :goto_21
    goto/32 :goto_12

    nop

    nop

    :goto_22
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x4

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

    nop

    :goto_24
    const/16 v0, 0xa

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

    nop

    :goto_25
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-wide v0, p0, Lopn;->d:D

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-wide v0, p0, Lopn;->b:J

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

    :goto_29
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, v0, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    :goto_2b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Lomr;->b(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    iget-object v0, p0, Lopn;->f:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_31
    invoke-static {v0}, Lomr;->a(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Lomr;->b(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_33
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v2, :cond_6

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    :goto_38
    iget v0, p0, Lopn;->h:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    :goto_3a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v1, :cond_8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    :goto_3c
    invoke-static {p1, v0, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    :goto_3d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v1, 0x9

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

    :goto_3f
    invoke-static {p1, v1, v0}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    :goto_40
    goto/32 :goto_30

    nop

    nop

    :goto_41
    const/16 v3, 0x8

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_42
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Lopn;->g:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

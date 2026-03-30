.class public abstract Lehy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lehy;->b:I

    nop

    nop

    goto/32 :goto_1

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final f(Ljava/lang/String;)V
    .locals 6

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/16 :goto_29

    nop

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "SupportSQLite"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    add-int/2addr v0, v3

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

    :goto_7
    const-string v0, "delete failed: "

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

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

    :goto_b
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v4, v5}, Luch;->a(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    move v4, v0

    nop

    nop

    :goto_13
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-gtz v4, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    if-ne v3, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v4, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    const-string v0, ":memory:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_32

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    :goto_22
    if-le v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    const/16 v5, 0x20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "deleting the database file: "

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_28
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    :goto_2b
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_30
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_31
    move v2, v1

    nop

    nop

    :goto_32
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Lehx;)V
.end method

.method public b(Lehx;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
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
.end method

.method public c(Lehx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public abstract d(Lehx;II)V
.end method

.method public e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

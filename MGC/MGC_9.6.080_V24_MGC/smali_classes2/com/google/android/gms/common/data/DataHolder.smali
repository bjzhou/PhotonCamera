.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lolk;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public final b:[Ljava/lang/String;

.field public c:Landroid/os/Bundle;

.field public final d:[Landroid/database/CursorWindow;

.field public final e:I

.field public final f:Landroid/os/Bundle;

.field public g:[I

.field public h:I

.field i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    new-instance v0, Lofh;

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
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v1, 0x18

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Z

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

    :goto_5
    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->f:Landroid/os/Bundle;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

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

    :goto_7
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I

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

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Lolx;->ac(Z)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    if-lt p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    move v1, v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto :goto_1d

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    if-lt v0, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    if-gez p1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    aget v1, v1, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    if-eq v0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

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
    return-object p0

    nop

    :goto_2
    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    aget-object p3, v0, p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->d()Z

    move-result p1

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
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_12

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt p2, p1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    nop

    nop

    :goto_e
    iget p0, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-direct {p1, p2, p0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p1, "Buffer is closed."

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "No such column: "

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

.method public final close()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Z

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    array-length v2, v1

    nop

    nop

    nop

    nop

    if-ge v0, v2, :cond_0

    nop

    aget-object v1, v1, v0

    nop

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Z

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 3

    goto/32 :goto_2

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:Z

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    nop

    nop

    nop

    array-length v0, v0

    nop

    nop

    if-lez v0, :cond_0

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->d()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v0, "DataBuffer"

    nop

    const-string v1, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    nop

    nop

    nop

    const-string v2, ")"

    nop

    nop

    nop

    nop

    invoke-static {p0, v1, v2}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0, v3}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->a:I

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

    :goto_4
    and-int/lit8 p1, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:Landroid/os/Bundle;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v2, v0}, Lolx;->w(Landroid/os/Parcel;I[Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->e:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v0, v3}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0, v3, p2}, Lolx;->y(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    const/16 v0, 0x3e8

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

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v0, v3}, Lolx;->o(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, v1}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x1

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    const/4 v0, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x19

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

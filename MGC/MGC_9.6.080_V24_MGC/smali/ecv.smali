.class public final Lecv;
.super Lecz;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lecw;


# direct methods
.method public constructor <init>(Lecw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lecz;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lecv;->b:Lecw;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    :try_start_0
    iget-object v0, p0, Lecv;->b:Lecw;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/TreeSet;

    nop

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, v0, Lecx;->e:Landroid/content/Context;

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v2, "dGhpcmRfcGFydHlfbGljZW5zZXNfbWV0YWRhdGE="

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    new-instance v2, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-wide/16 v3, 0x0

    nop

    const/4 v5, -0x1

    nop

    nop

    invoke-static {v0, v2, v3, v4, v5}, Lqqy;->c(Landroid/content/Context;Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v2, "\n"

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    array-length v3, v0

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    nop

    nop

    nop

    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ge v5, v3, :cond_1

    nop

    nop

    nop

    nop

    aget-object v6, v0, v5

    nop

    nop

    nop

    nop

    const/16 v7, 0x20

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const-string v9, ":"

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    array-length v9, v8

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    if-ne v9, v10, :cond_0

    nop

    nop

    nop

    if-lez v7, :cond_0

    nop

    nop

    move v9, v11

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_0
    move v9, v4

    nop

    :goto_8
    const-string v10, "Invalid license meta-data line:\n%s"

    nop

    nop

    nop

    nop

    invoke-static {v9, v10, v6}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    aget-object v9, v8, v4

    nop

    nop

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    aget-object v8, v8, v11

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Lqze;

    nop

    nop

    invoke-direct {v7, v6, v9, v10, v8}, Lqze;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    nop
    :try_end_0
    .catch Ldum; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_d
    invoke-virtual {p0}, Lecz;->f()Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v1, 0xc

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
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lecv;->b:Lecw;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Lecw;->a:Lecv;

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

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p0, v0, Lecw;->a:Lecv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Lecw;->c(Lecv;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_f
    invoke-virtual {v0, p1}, Lecw;->b(Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v1, p0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    iget-boolean p0, v0, Lecx;->g:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lecv;->b:Lecw;

    nop

    goto/32 :goto_2

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
    invoke-virtual {v0, p0}, Lecw;->c(Lecv;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final run()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lecv;->b:Lecw;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lecv;->a:Z

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lecw;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

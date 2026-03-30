.class public final Lrmw;
.super Lrnm;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lrmz;

.field final synthetic c:Lpic;


# direct methods
.method public constructor <init>(Lrmz;Lpic;Lpic;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-direct {p0, p2}, Lrnm;-><init>(Lpic;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lrmw;->c:Lpic;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lrmw;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrmw;->b:Lrmz;

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
.end method


# virtual methods
.method protected final a()V
    .locals 6

    goto/32 :goto_8

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrmw;->c:Lpic;

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

    :goto_5
    const-string v3, "completeUpdate(%s)"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1}, Lpic;->u(Ljava/lang/Exception;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

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

    :goto_8
    const v0, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v0, v3, v1}, Lrpz;->j(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    :try_start_0
    iget-object v0, p0, Lrmw;->b:Lrmz;

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lrmz;->a:Lrnv;

    nop

    nop

    iget-object v1, v1, Lrnv;->l:Landroid/os/IInterface;

    nop

    nop

    nop

    iget-object v0, v0, Lrmz;->b:Ljava/lang/String;

    nop

    nop

    invoke-static {}, Lrmz;->b()Landroid/os/Bundle;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v3, Lrmx;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lrmw;->b:Lrmz;

    nop

    nop

    iget-object v5, p0, Lrmw;->c:Lpic;

    nop

    nop

    nop

    invoke-direct {v3, v4, v5}, Lrmx;-><init>(Lrmz;Lpic;)V

    move-object v4, v1

    nop

    nop

    check-cast v4, Lfum;

    nop

    nop

    invoke-virtual {v4}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v3}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    check-cast v1, Lfum;

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v4}, Lfum;->B(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lrmw;->a:Ljava/lang/String;

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

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lrmz;->d:Lrpz;

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.class public final Lorv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lohn;


# instance fields
.field public final a:Lorr;

.field private final b:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lorr;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lorv;->a:Lorr;

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

    :goto_1
    iput-object p1, p0, Lorv;->b:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lorv;->b:Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lorv;->a:Lorr;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const-string v0, "OptInOptionsResultImpl[%s]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lorv;->a:Lorr;

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

    :goto_e
    iget p0, p0, Lorr;->a:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

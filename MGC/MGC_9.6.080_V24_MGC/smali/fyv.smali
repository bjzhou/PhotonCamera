.class final Lfyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfxw;


# instance fields
.field private final a:Loyd;

.field private final b:Loyn;


# direct methods
.method public constructor <init>(Llyv;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    new-instance p1, Loxv;

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
    invoke-direct {p1, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Llyv;->a(Llyp;)Loyn;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0xf

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
    iput-object p1, p0, Lfyv;->b:Loyn;

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

    :goto_5
    iput-object p1, p0, Lfyv;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

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

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    sget-object v0, Llyr;->u:Llze;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfyv;->a:Loyd;

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
.end method

.method public final b()Loyn;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfyv;->b:Loyn;

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
    return-object p0

    nop
.end method

.method public final c()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    :try_start_0
    sget-object v0, Lnyl;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

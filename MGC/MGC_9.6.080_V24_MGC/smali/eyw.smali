.class public final synthetic Leyw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lezo;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string p0, "Unable to load composition."

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lffi;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "Unable to parse composition"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    instance-of p0, p1, Ljava/net/UnknownServiceException;

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

    :goto_d
    instance-of p0, p1, Ljava/net/ProtocolException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    instance-of p0, p1, Ljava/net/UnknownHostException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/lang/Throwable;

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

    :goto_10
    instance-of p0, p1, Ljava/net/SocketException;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    instance-of p0, p1, Ljava/nio/channels/ClosedChannelException;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Lezo;

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

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

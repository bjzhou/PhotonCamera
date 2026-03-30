.class public final Lqex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqeu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object p1, p0, Lqex;->a:Ljava/lang/Object;

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
    iput p2, p0, Lqex;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Lqex;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqex;->a:Ljava/lang/Object;

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
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lqex;->b:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

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

    :goto_3
    invoke-interface {v0}, Lqlt;->close()V

    goto/32 :goto_2b

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    goto/32 :goto_1f

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
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide p0, p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_28

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-direct {v0, p0}, Lqll;-><init>(Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;)V

    :try_start_0
    invoke-interface {v0}, Lqlt;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/nio/Buffer;

    nop

    invoke-interface {p1, p0}, Lqjf;->j(Ljava/nio/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_11
    check-cast p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqex;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    new-instance v0, Lqll;

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

    :goto_15
    invoke-static {p0, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->attachToTexture(J)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Lqjf;->i()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lqjq;->e()V

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lqex;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lqjf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_21
    check-cast p1, Lqjq;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lqex;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

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

    :goto_24
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p0, Lqet;->a:Lqet;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lqex;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {v0}, Lqlt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    check-cast p0, Ljava/lang/Throwable;

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

    :goto_2b
    sget-object p0, Lqet;->a:Lqet;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

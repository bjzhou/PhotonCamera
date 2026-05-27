.class public final synthetic Lhhm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhhr;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/nio/ByteBuffer;

.field public final synthetic f:J

.field public final synthetic g:Lmqp;


# direct methods
.method public synthetic constructor <init>(Lhhr;IIILjava/nio/ByteBuffer;JLmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhm;->a:Lhhr;

    iput p2, p0, Lhhm;->b:I

    iput p3, p0, Lhhm;->c:I

    iput p4, p0, Lhhm;->d:I

    iput-object p5, p0, Lhhm;->e:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lhhm;->f:J

    iput-object p8, p0, Lhhm;->g:Lmqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lhhm;->a:Lhhr;

    iget v1, p0, Lhhm;->b:I

    rem-int/lit16 v1, v1, 0xb4

    iget v2, p0, Lhhm;->c:I

    iget v3, p0, Lhhm;->d:I

    if-nez v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    if-nez v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    iget-object v5, p0, Lhhm;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lhhm;->f:J

    iget-object v10, p0, Lhhm;->g:Lmqp;

    sget-object v8, Lmpc;->a:Lmpc;

    const-string v3, "Null colorspace"

    if-eqz v8, :cond_5

    const-string v11, "Null imageBuffer"

    if-eqz v5, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v9

    new-instance v1, Lhid;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lhid;-><init>(Ljava/nio/ByteBuffer;IILmpc;Lmqp;Lmqp;)V

    iget-object v2, v0, Lhhr;->f:Lkbc;

    const-string v4, "SEController#provideVideoFrame"

    invoke-interface {v2, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v0, Lhhr;->l:Ljew;

    iget-object v2, v2, Ljew;->a:Ljava/lang/Object;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    iget-object v5, v1, Lhid;->a:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    iget v6, v1, Lhid;->b:I

    iget v7, v1, Lhid;->c:I

    iget-object v8, v1, Lhid;->d:Lmpc;

    if-eqz v8, :cond_2

    iget-object v1, v1, Lhid;->e:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v10

    new-instance v1, Lmpl;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lmpl;-><init>(Ljava/nio/ByteBuffer;IILmpc;Lj$/util/Optional;Lj$/util/Optional;)V

    invoke-interface {v2, v1}, Lmon;->d(Lmpl;)V

    iget-object v0, v0, Lhhr;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

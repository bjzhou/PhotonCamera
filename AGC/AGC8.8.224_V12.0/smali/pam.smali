.class public final Lpam;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/nio/ByteBuffer;


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Z

.field private final d:Ljava/nio/channels/ReadableByteChannel;

.field private final e:Lpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lpam;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lpam;->d:Ljava/nio/channels/ReadableByteChannel;

    new-instance p1, Lpan;

    invoke-direct {p1}, Lpan;-><init>()V

    iput-object p1, p0, Lpam;->e:Lpan;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lpam;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()I
    .locals 8

    :goto_0
    iget-object v0, p0, Lpam;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lpam;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpam;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lpam;->e:Lpan;

    iget v2, v0, Lpan;->c:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    const/4 v4, -0x1

    packed-switch v3, :pswitch_data_0

    const-string v0, "corrupted input"

    invoke-direct {p0, v0}, Lpam;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1}, Lpan;->c(I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, v0, Lpan;->a:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    aget-wide v4, v3, v1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Llkj;->L(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pulling output from decoder in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    invoke-static {v3}, Lorg/brotli/wrapper/dec/DecoderJNI;->nativePull([J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lpan;->b()V

    iput-object v1, p0, Lpam;->a:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "brotli decoder is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, v0, Lpan;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lpam;->d:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "unexpected end of input"

    invoke-direct {p0, v0}, Lpam;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v4, v0

    :goto_3
    if-nez v4, :cond_6

    sget-object v0, Lpam;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lpam;->a:Ljava/nio/ByteBuffer;

    return v1

    :cond_6
    iget-object v0, p0, Lpam;->e:Lpan;

    invoke-virtual {v0, v4}, Lpan;->c(I)V

    goto/16 :goto_0

    :pswitch_3
    return v4

    :cond_7
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final b()V
    .locals 1

    iget-boolean v0, p0, Lpam;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpam;->b:Z

    iget-object v0, p0, Lpam;->e:Lpan;

    invoke-virtual {v0}, Lpan;->a()V

    iget-object v0, p0, Lpam;->d:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-void
.end method

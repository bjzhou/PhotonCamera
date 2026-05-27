.class public final Lbyh;
.super Ljava/lang/Object;

# interfaces
.implements Lbyg;


# static fields
.field public static final a:Lbyh;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbyh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbyh;-><init>(I)V

    sput-object v0, Lbyh;->a:Lbyh;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbyh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbsn;Lbqf;)Lbsn;
    .locals 4

    iget p2, p0, Lbyh;->b:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, Lbsn;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbxv;

    invoke-virtual {p1}, Lbxv;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lbxn;

    sget v0, Lcaj;->a:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lgqy;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lgqy;-><init>([BII)V

    goto :goto_0

    :pswitch_0
    return-object p1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lgqy;->b:I

    if-nez v0, :cond_1

    iget v0, v1, Lgqy;->a:I

    iget-object v1, v1, Lgqy;->c:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p1}, Lcaj;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, v0

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lbxn;-><init>([BI)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

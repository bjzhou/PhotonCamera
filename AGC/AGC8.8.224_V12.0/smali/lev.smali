.class public final Llev;
.super Ljava/lang/Object;

# interfaces
.implements Lleu;


# instance fields
.field public final b:Lnph;

.field private final c:Llep;


# direct methods
.method public constructor <init>(Llep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llev;->c:Llep;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Llev;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final a(Lldv;)V
    .locals 3

    iget-object v0, p0, Llev;->c:Llep;

    iget-object v1, p1, Lldv;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lldv;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1, v2}, Llep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {p1}, Lldv;->close()V

    return-void
.end method

.method public final b(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Llev;->b:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

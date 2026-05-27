.class public final Lkxs;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field final synthetic b:Lloi;


# direct methods
.method public constructor <init>(Lloi;I[B[B[B)V
    .locals 0

    iput-object p1, p0, Lkxs;->b:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lkxs;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lkxs;->b:Lloi;

    iget-object v0, v0, Lloi;->b:Ljava/lang/Object;

    iget v1, p0, Lkxs;->a:I

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

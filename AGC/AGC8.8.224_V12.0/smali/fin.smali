.class public final synthetic Lfin;
.super Ljava/lang/Object;

# interfaces
.implements Lfla;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 0

    iput p2, p0, Lfin;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfin;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgrw;I)V
    .locals 0

    iput p2, p0, Lfin;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfin;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfin;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfin;->a:Ljava/lang/Object;

    check-cast p1, Lfim;

    iget-object p1, p1, Lfim;->d:Lnph;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lfin;->a:Ljava/lang/Object;

    check-cast p1, Lfim;

    iget-object p1, p1, Lfim;->c:Lnph;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

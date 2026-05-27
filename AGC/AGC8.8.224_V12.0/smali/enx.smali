.class public final synthetic Lenx;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjad;I[B[B[B)V
    .locals 0

    iput p3, p0, Lenx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lenx;->a:I

    iput-object p2, p0, Lenx;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leoa;II)V
    .locals 0

    iput p3, p0, Lenx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lenx;->b:Ljava/lang/Object;

    iput p2, p0, Lenx;->a:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    iget v0, p0, Lenx;->c:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lenx;->a:I

    iget-object v1, p0, Lenx;->b:Ljava/lang/Object;

    check-cast v1, Ljad;

    iget-wide v2, v1, Ljad;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lenx;->b:Ljava/lang/Object;

    iget v1, p0, Lenx;->a:I

    check-cast v0, Leoa;

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Llkj;->x(Z)V

    iget-wide v2, v1, Ljad;->a:J

    iput-wide v4, v1, Ljad;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/camera/async/tt/CpuSets;->nativeRestoreCpuSet(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

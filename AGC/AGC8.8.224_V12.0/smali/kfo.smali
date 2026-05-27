.class public final synthetic Lkfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkfp;

.field public final synthetic b:J

.field public final synthetic c:I

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lkfp;JII)V
    .locals 0

    iput p5, p0, Lkfo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkfo;->a:Lkfp;

    iput-wide p2, p0, Lkfo;->b:J

    iput p4, p0, Lkfo;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lkfo;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkfo;->a:Lkfp;

    iget-wide v1, p0, Lkfo;->b:J

    iget v3, p0, Lkfo;->c:I

    iget-object v0, v0, Lkfp;->a:Lkfg;

    invoke-virtual {v0, v1, v2, v3}, Lkfg;->bD(JI)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkfo;->a:Lkfp;

    iget-wide v1, p0, Lkfo;->b:J

    iget v3, p0, Lkfo;->c:I

    iget-object v0, v0, Lkfp;->a:Lkfg;

    invoke-virtual {v0, v1, v2, v3}, Lkfg;->bs(JI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

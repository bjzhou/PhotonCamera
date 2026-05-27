.class public final Lgad;
.super Ljwh;


# instance fields
.field private final a:Lgam;

.field private final b:Lgam;

.field private final c:Lgam;

.field private final d:Lgam;

.field private final e:Lgam;

.field private final f:Lgam;


# direct methods
.method public constructor <init>(Ljvs;Lgam;Lgam;Lgam;Lgam;Lgam;Lgam;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    iput-object p2, p0, Lgad;->a:Lgam;

    iput-object p3, p0, Lgad;->b:Lgam;

    iput-object p4, p0, Lgad;->c:Lgam;

    iput-object p5, p0, Lgad;->d:Lgam;

    iput-object p6, p0, Lgad;->e:Lgam;

    iput-object p7, p0, Lgad;->f:Lgam;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lfwl;

    invoke-virtual {p1}, Lfwl;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid AutoHdrPlusRecommendation enum instance:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lgad;->f:Lgam;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lgad;->e:Lgam;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lgad;->d:Lgam;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lgad;->c:Lgam;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lgad;->b:Lgam;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lgad;->a:Lgam;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgad;->a:Lgam;

    const-string v2, "normal"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgad;->b:Lgam;

    const-string v2, "normalFlash"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgad;->c:Lgam;

    const-string v2, "hdrPlus"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgad;->d:Lgam;

    const-string v2, "hdrPlusTorch"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgad;->e:Lgam;

    const-string v2, "hdrPlusZsl"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

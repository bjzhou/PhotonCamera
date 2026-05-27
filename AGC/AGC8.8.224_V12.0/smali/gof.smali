.class public final synthetic Lgof;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;


# instance fields
.field public final synthetic a:Lgom;

.field public final synthetic b:Lgon;


# direct methods
.method public synthetic constructor <init>(Lgom;Lgon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgof;->a:Lgom;

    iput-object p2, p0, Lgof;->b:Lgon;

    return-void
.end method


# virtual methods
.method public final onImage(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object p6, p0, Lgof;->a:Lgom;

    iget-object v0, p0, Lgof;->b:Lgon;

    iget-object p6, p6, Lgom;->a:Lnrm;

    invoke-virtual {p6, p3, p4}, Lnrm;->a(J)Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {p3}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v3

    invoke-static {p5}, Lnqz;->a(I)Lnqz;

    move-result-object v4

    move-wide v1, p1

    move-object v5, p7

    move-object v6, p8

    invoke-interface/range {v0 .. v6}, Lgon;->a(JLigo;Lnqz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

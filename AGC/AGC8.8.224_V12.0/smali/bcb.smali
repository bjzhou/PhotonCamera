.class public final Lbcb;
.super Ljava/lang/Object;

# interfaces
.implements Lbbz;


# instance fields
.field public final a:Lapt;

.field public final b:Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbcb;->a:Lapt;

    new-instance v0, Lbca;

    invoke-direct {v0, p1}, Lbca;-><init>(Lapt;)V

    iput-object v0, p0, Lbcb;->b:Lapo;

    return-void
.end method

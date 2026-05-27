.class public final Lbcg;
.super Ljava/lang/Object;

# interfaces
.implements Lbcc;


# instance fields
.field public final a:Lapt;

.field public final b:Laqa;

.field public final c:Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbcg;->a:Lapt;

    new-instance v0, Lbcd;

    invoke-direct {v0, p1}, Lbcd;-><init>(Lapt;)V

    new-instance v0, Lbce;

    invoke-direct {v0, p1}, Lbce;-><init>(Lapt;)V

    iput-object v0, p0, Lbcg;->b:Laqa;

    new-instance v0, Lbcf;

    invoke-direct {v0, p1}, Lbcf;-><init>(Lapt;)V

    iput-object v0, p0, Lbcg;->c:Laqa;

    return-void
.end method

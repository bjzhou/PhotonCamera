.class public final Ljfm;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Ljca;

.field public final b:Z

.field public final c:I

.field final synthetic d:Ljfl;


# direct methods
.method public constructor <init>(Ljfl;[Ljca;ZI)V
    .locals 0

    iput-object p1, p0, Ljfm;->d:Ljfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljfm;->a:[Ljca;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Ljfm;->b:Z

    iput p4, p0, Ljfm;->c:I

    return-void
.end method

.method public static a()Ljfl;
    .locals 1

    new-instance v0, Ljfl;

    invoke-direct {v0}, Ljfl;-><init>()V

    return-object v0
.end method

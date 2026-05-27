.class public final Lbvv;
.super Ljava/lang/Object;

# interfaces
.implements Lbqh;


# instance fields
.field private final a:Lbqh;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lbqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbvv;->b:Landroid/content/res/Resources;

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p2, p0, Lbvv;->a:Lbqh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILbqf;)Lbsn;
    .locals 1

    iget-object v0, p0, Lbvv;->a:Lbqh;

    invoke-interface {v0, p1, p2, p3, p4}, Lbqh;->a(Ljava/lang/Object;IILbqf;)Lbsn;

    move-result-object p1

    iget-object p2, p0, Lbvv;->b:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lbwy;->f(Landroid/content/res/Resources;Lbsn;)Lbsn;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Lbqf;)Z
    .locals 1

    iget-object v0, p0, Lbvv;->a:Lbqh;

    invoke-interface {v0, p1, p2}, Lbqh;->b(Ljava/lang/Object;Lbqf;)Z

    move-result p1

    return p1
.end method

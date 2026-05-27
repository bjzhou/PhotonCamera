.class public final Lbjb;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbiz;

.field public final c:Lbit;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbiz;Lbit;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbjb;->a:Ljava/lang/String;

    iput-object p2, p0, Lbjb;->b:Lbiz;

    iput-object p3, p0, Lbjb;->c:Lbit;

    iput-boolean p4, p0, Lbjb;->d:Z

    iput-boolean p5, p0, Lbjb;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 1

    new-instance v0, Lbgz;

    invoke-direct {v0, p1, p2, p0}, Lbgz;-><init>(Lbgj;Lbjq;Lbjb;)V

    return-object v0
.end method

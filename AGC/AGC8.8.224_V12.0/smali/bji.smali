.class public final Lbji;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbip;

.field public final c:Lbip;

.field public final d:Lbiy;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbip;Lbip;Lbiy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbji;->a:Ljava/lang/String;

    iput-object p2, p0, Lbji;->b:Lbip;

    iput-object p3, p0, Lbji;->c:Lbip;

    iput-object p4, p0, Lbji;->d:Lbiy;

    iput-boolean p5, p0, Lbji;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 1

    new-instance v0, Lbhj;

    invoke-direct {v0, p1, p2, p0}, Lbhj;-><init>(Lbgj;Lbjq;Lbji;)V

    return-object v0
.end method

.class public final Lbjg;
.super Ljava/lang/Object;

# interfaces
.implements Lbjc;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbip;

.field public final c:Lbiz;

.field public final d:Lbip;

.field public final e:Lbip;

.field public final f:Lbip;

.field public final g:Lbip;

.field public final h:Lbip;

.field public final i:Z

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILbip;Lbiz;Lbip;Lbip;Lbip;Lbip;Lbip;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbjg;->a:Ljava/lang/String;

    iput p2, p0, Lbjg;->j:I

    iput-object p3, p0, Lbjg;->b:Lbip;

    iput-object p4, p0, Lbjg;->c:Lbiz;

    iput-object p5, p0, Lbjg;->d:Lbip;

    iput-object p6, p0, Lbjg;->e:Lbip;

    iput-object p7, p0, Lbjg;->f:Lbip;

    iput-object p8, p0, Lbjg;->g:Lbip;

    iput-object p9, p0, Lbjg;->h:Lbip;

    iput-boolean p10, p0, Lbjg;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Lbgj;Lbjq;)Lbgw;
    .locals 1

    new-instance v0, Lbhh;

    invoke-direct {v0, p1, p2, p0}, Lbhh;-><init>(Lbgj;Lbjq;Lbjg;)V

    return-object v0
.end method

.class public final Ljgt;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILbiv;Lbir;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljgt;->a:I

    iput-object p2, p0, Ljgt;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljgt;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Ljgt;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbze;ZI[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljgt;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljgt;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Ljgt;->b:Z

    iput p4, p0, Ljgt;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljgt;->d:Ljava/lang/Object;

    iput-object p2, p0, Ljgt;->c:Ljava/lang/Object;

    const/16 p1, 0x1081

    iput p1, p0, Ljgt;->a:I

    iput-boolean p3, p0, Ljgt;->b:Z

    return-void
.end method

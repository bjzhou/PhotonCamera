.class public final Lida;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lida;->a:Ljava/lang/Object;

    iput-object p2, p0, Lida;->b:Ljava/lang/String;

    iput p3, p0, Lida;->c:I

    iput-object p4, p0, Lida;->d:Ljava/lang/String;

    iput-object p5, p0, Lida;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lida;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lida;->f:Z

    iput-object p1, p0, Lida;->a:Ljava/lang/Object;

    iput-object p2, p0, Lida;->b:Ljava/lang/String;

    iput p3, p0, Lida;->c:I

    iput-object p4, p0, Lida;->d:Ljava/lang/String;

    iput-object p5, p0, Lida;->e:Ljava/lang/String;

    return-void
.end method

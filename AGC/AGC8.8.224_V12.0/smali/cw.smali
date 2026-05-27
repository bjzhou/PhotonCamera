.class final Lcw;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lbw;

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Lakr;

.field i:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILbw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcw;->a:I

    iput-object p2, p0, Lcw;->b:Lbw;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcw;->c:Z

    sget-object p1, Lakr;->e:Lakr;

    iput-object p1, p0, Lcw;->h:Lakr;

    sget-object p1, Lakr;->e:Lakr;

    iput-object p1, p0, Lcw;->i:Lakr;

    return-void
.end method

.method public constructor <init>(ILbw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcw;->a:I

    iput-object p2, p0, Lcw;->b:Lbw;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcw;->c:Z

    sget-object p1, Lakr;->e:Lakr;

    iput-object p1, p0, Lcw;->h:Lakr;

    sget-object p1, Lakr;->e:Lakr;

    iput-object p1, p0, Lcw;->i:Lakr;

    return-void
.end method

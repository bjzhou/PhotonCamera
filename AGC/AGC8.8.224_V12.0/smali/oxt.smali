.class final Loxt;
.super Lopq;


# static fields
.field public static final c:Loxt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loxt;

    invoke-direct {v0}, Loxt;-><init>()V

    sput-object v0, Loxt;->c:Loxt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lopq;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Loxn;->c:Loxn;

    sget-object v0, Loxs;->f:Loxq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Loxo;->d:Loxl;

    invoke-virtual {p1, p2, v0}, Loxl;->d(Ljava/lang/Runnable;Loxq;)V

    return-void
.end method

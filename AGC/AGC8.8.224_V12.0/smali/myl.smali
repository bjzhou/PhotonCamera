.class public final Lmyl;
.super Lmyk;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lmyk;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmyl;

    invoke-direct {v0}, Lmyl;-><init>()V

    sput-object v0, Lmyl;->a:Lmyk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyk;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lmym;

    check-cast p2, Lmym;

    sget-object v0, Lmtw;->b:Lmtw;

    iget-object v1, p1, Lmym;->b:Lmuc;

    iget-object v2, p2, Lmym;->b:Lmuc;

    invoke-virtual {v0, v1, v2}, Lmtw;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtw;

    move-result-object v0

    iget-object p1, p1, Lmym;->c:Lmuc;

    iget-object p2, p2, Lmym;->c:Lmuc;

    invoke-virtual {v0, p1, p2}, Lmtw;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtw;

    move-result-object p1

    invoke-virtual {p1}, Lmtw;->a()I

    move-result p1

    return p1
.end method

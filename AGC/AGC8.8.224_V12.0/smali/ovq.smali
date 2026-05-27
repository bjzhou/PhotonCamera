.class final synthetic Lovq;
.super Lond;

# interfaces
.implements Lomp;


# static fields
.field public static final e:Lovq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lovq;

    invoke-direct {v0}, Lovq;-><init>()V

    sput-object v0, Lovq;->e:Lovq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lotu;

    invoke-direct {p0, v0}, Lond;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p3}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

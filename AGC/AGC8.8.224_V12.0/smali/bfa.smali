.class public final Lbfa;
.super Ljava/lang/Object;

# interfaces
.implements Lbfu;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lbfi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfi;)V
    .locals 0

    iput-object p1, p0, Lbfa;->a:Ljava/lang/String;

    iput-object p2, p0, Lbfa;->b:Ljava/lang/String;

    iput-object p3, p0, Lbfa;->c:Ljava/lang/Object;

    iput-object p4, p0, Lbfa;->d:Lbfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbfs;
    .locals 1

    iget-object v0, p0, Lbfa;->d:Lbfi;

    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object v0

    return-object v0
.end method
